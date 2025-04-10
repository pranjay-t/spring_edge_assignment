import 'package:flutter/material.dart';

class ContainerInfoRow extends StatefulWidget {
  const ContainerInfoRow({super.key});

  @override
  State<ContainerInfoRow> createState() => _ContainerInfoRowState();
}

class _ContainerInfoRowState extends State<ContainerInfoRow> {
  bool _isOpen = false;
  String containerSize = '40\' Standard';
  List<String> sizeOptions = [
    '40\' Standard',
    '20\' Standard',
    '40\' High Cube',
    '40\' Open Top',
    '40\' Reefer',
    '40\' Standard',
  ];
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Color(0xffE8E8E8), width: 1),
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SizedBox(
            width: deviceWidth * (652 / 1440),
            child: Column(
              children: [
                TextField(
                  readOnly: true,
                  onTap: () {
                    setState(() {
                      _isOpen = !_isOpen;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: containerSize,
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'PublicSans',
                      fontWeight: FontWeight.w400,
                    ),
                    labelText: 'Container size',
                    labelStyle: TextStyle(
                      fontSize: 12,
                      fontFamily: 'PublicSans',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff9E9E9E),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    focusedBorder: border,
                    enabledBorder: border,
                    suffixIcon:
                        _isOpen == false
                            ? Icon(Icons.keyboard_arrow_down)
                            : Icon(Icons.keyboard_arrow_up),
                  ),
                ),
                if (_isOpen)
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      itemCount: sizeOptions.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              containerSize = sizeOptions[index];
                              _isOpen = !_isOpen;
                            });
                          },
                          child: ListTile(
                            title: Text(
                              sizeOptions[index],
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff9E9E9E),
                                fontWeight: FontWeight.w400,
                                fontFamily: 'PublicSans',
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
        ),

        Expanded(
          child: Row(
            children: [
              SizedBox(width: deviceWidth * (24 / 1440)),
              Expanded(
                child: SizedBox(
                  width: deviceWidth * (314 / 1440),
                  height: deviceHeight * (56 / 873),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'No. of Boxes',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: 'PublicSans',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff9E9E9E),
                      ),
                      focusedBorder: border,
                      enabledBorder: border,
                    ),
                  ),
                ),
              ),
              SizedBox(width: deviceWidth * (24 / 1440)),
              Expanded(
                child: SizedBox(
                  width: deviceWidth * (314 / 1440),
                  height: deviceHeight * (56 / 873),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Weight (Kg)',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: 'PublicSans',
                        fontWeight: FontWeight.w400,
                        color: Color(0xff9E9E9E),
                      ),
                      focusedBorder: border,
                      enabledBorder: border,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
