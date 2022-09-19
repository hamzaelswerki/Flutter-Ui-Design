import 'package:beatuifuldesign/custom/BorderBox.dart';
import 'package:beatuifuldesign/custom/ChoiceOption.dart';
import 'package:beatuifuldesign/custom/OptionButton.dart';
import 'package:beatuifuldesign/utils/constants.dart';
import 'package:beatuifuldesign/utils/widget_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../custom/CityItem.dart';
import '../utils/sample_data.dart';

class LandingSecreen extends StatelessWidget {
  const LandingSecreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double padding = 25;
    final ThemeData themeData = Theme.of(context);
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addVerticalSpace(padding),
                Padding(
                  padding: sidePadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      BorderBox(
                          padding: EdgeInsets.all(10),
                          width: 50,
                          height: 50,
                          child: Icon(Icons.menu)),
                      BorderBox(
                          padding: EdgeInsets.all(10),
                          width: 50,
                          height: 50,
                          child: Icon(Icons.settings)),
                    ],
                  ),
                ),
                addVerticalSpace(padding),
                Padding(
                  padding: sidePadding,
                  child: Text(
                    'city',
                    style: themeData.textTheme.bodyText1,
                  ),
                ),
                addVerticalSpace(padding),
                Padding(
                  padding: sidePadding,
                  child: Text(
                    'San Francis',
                    style: themeData.textTheme.headline1,
                  ),
                ),
                Padding(
                  padding: sidePadding,
                  child: Divider(
                    height: padding,
                    color: COLOR_GREY,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ["<\$2200", "For sale", "Beds", ">1000 sqft", "new"]
                        .map((filter) => ChoiceOption(
                      data: filter,
                    ))
                        .toList(),
                  ),
                ),
                addVerticalSpace(10),
                Expanded(
                  child: Padding(
                    padding: sidePadding,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                        itemCount: RE_DATA.length,
                        itemBuilder: (context,index){
                          return  CityItem(data: RE_DATA[index],);
                        }),
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 15,
                width: size.width,
                child:
            Center(child:
            OptionButton(width: size.width*0.35
              ,data:"Map View",iconData:
              Icons.wifi_calling_3_outlined,))
            )
          ],)
        ),
      ),
    );
  }
}
