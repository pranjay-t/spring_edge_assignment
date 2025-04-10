import 'package:flutter/material.dart';
import 'package:spring_edge_assignment/components/button.dart';
import 'package:spring_edge_assignment/widgets/commodity_and_date_widget.dart';
import 'package:spring_edge_assignment/widgets/container_dimension.dart';
import 'package:spring_edge_assignment/widgets/container_info_row.dart';
import 'package:spring_edge_assignment/widgets/info_widget.dart';
import 'package:spring_edge_assignment/widgets/shiptype_widget.dart';
import 'package:spring_edge_assignment/widgets/location_widget.dart';
import 'package:svg_flutter/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xffE6EAF8),
      appBar: AppBar(
        backgroundColor: Color(0x80FFFFFF),
        title: const Text(
          'Search the best Freight Rates',
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w500,
            color: Color(0xff212121),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Button(width: 104, isIcon: false, title: 'History'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: SizedBox(
            width: deviceWidth,
            child: Card(
              color: const Color(0xffFFFFFF),
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 48),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LocationWidget(),
                    SizedBox(height: deviceHeight * (24 / 873)),
                    CommodityAndDateWidget(),
                    SizedBox(height: deviceHeight * (24 / 873)),
                    Text(
                      'Shipment Type:',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'PublicSans',
                        fontWeight: FontWeight.w500,
                        color: Color(0xff212121),
                      ),
                    ),
                    SizedBox(height: deviceHeight * (24 / 873)),
                    ShiptypeWidget(),
                    SizedBox(height: deviceHeight * (24 / 873)),
                    ContainerInfoRow(),
                    SizedBox(height: deviceHeight * (12 / 873)),
                    InfoWidget(),
                    SizedBox(height: deviceHeight * (24 / 873)),
                    Text(
                      'Container Internal Dimensions :',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'PublicSans',
                        fontWeight: FontWeight.w500,
                        color: Color(0xff212121),
                      ),
                    ),
                    SizedBox(height: deviceHeight * (24 / 873)),
                    ContainerDimension(),
                    SizedBox(height: deviceHeight * (24 / 873)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Button(
                          width: 122,
                          isIcon: true,
                          title: 'Search',
                          icon: SvgPicture.asset(
                            'assets/images/search.svg',
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
