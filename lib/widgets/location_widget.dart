import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:spring_edge_assignment/api_services/location_api_services.dart';
import 'package:spring_edge_assignment/components/hoverable_checkbox.dart';
import 'package:spring_edge_assignment/models/university.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  final TextEditingController _originController = TextEditingController();
  final TextEditingController _destinationController = TextEditingController();
  bool _originChecker = false;
  bool _destinationChecker = false;
  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: BorderSide(color: Color(0xffE8E8E8), width: 1),
  );
  final LocationApiServices _api = LocationApiServices();
  void changeOriginChecker(bool value) {
    setState(() {
      _originChecker = value;
    });
  }

  void changeDestChecker(bool value) {
    setState(() {
      _destinationChecker = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              TypeAheadField<University>(
                controller: _originController,
                debounceDuration: Duration(milliseconds: 300),
                suggestionsCallback: (pattern) async {
                  if (pattern.isEmpty) return [];
                  return await _api.fetchUniversities(pattern);
                },
                builder: (context, controller, focusNode) {
                  return TextField(
                    controller: controller,
                    focusNode: focusNode,
                    decoration: InputDecoration(
                      hintText: 'Origin',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: 'PublicSans',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6E6E6E),
                      ),
                      focusedBorder: border,
                      enabledBorder: border,
                      prefixIcon: Image.asset(
                        'assets/images/location.png',
                        height: 20,
                        width: 20,
                      ),
                    ),
                  );
                },
                itemBuilder: (context, University suggestion) {
                  return ListTile(title: Text(suggestion.name));
                },
                onSelected: (University suggestion) {
                  _originController.text = suggestion.name;
                },
                emptyBuilder:
                    (context) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('No universities found.'),
                    ),
              ),

              SizedBox(height: deviceHeight * (12 / 873)),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    HoverableCheckbox(
                      value: _originChecker,
                      onChanged: changeOriginChecker,
                    ),
                    SizedBox(width: 12),
                    const Text(
                      'Include nearby origin ports',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'PublicSans',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff666666),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        const SizedBox(width: 24),
        Expanded(
          child: Column(
            children: [
              TypeAheadField<University>(
                controller: _destinationController,
                debounceDuration: Duration(milliseconds: 300),
                suggestionsCallback: (pattern) async {
                  if (pattern.isEmpty) return [];
                  return await _api.fetchUniversities(pattern);
                },
                builder: (context, controller, focusNode) {
                  return TextField(
                    controller: controller,
                    focusNode: focusNode,
                    decoration: InputDecoration(
                      hintText: 'Destination',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: 'PublicSans',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff6E6E6E),
                      ),
                      focusedBorder: border,
                      enabledBorder: border,
                      prefixIcon: Image.asset(
                        'assets/images/location.png',
                        height: 20,
                        width: 20,
                      ),
                    ),
                  );
                },
                itemBuilder: (context, University suggestion) {
                  return ListTile(title: Text(suggestion.name));
                },
                onSelected: (University suggestion) {
                  _destinationController.text = suggestion.name;
                },
                emptyBuilder:
                    (context) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('No universities found.'),
                    ),
              ),
              SizedBox(height: deviceHeight * (12 / 873)),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    HoverableCheckbox(
                      value: _destinationChecker,
                      onChanged: changeDestChecker,
                    ),
                    SizedBox(width: 12),
                    const Text(
                      'Include nearby destination ports',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'PublicSans',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff666666),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
