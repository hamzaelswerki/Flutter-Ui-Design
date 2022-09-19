import 'dart:ui';

import 'package:beatuifuldesign/custom/BorderBox.dart';
import 'package:beatuifuldesign/custom/OptionButton.dart';
import 'package:beatuifuldesign/utils/custome_functions.dart';
import 'package:beatuifuldesign/utils/widget_functions.dart';
import 'package:flutter/material.dart';

class DetailsSecreen extends StatelessWidget {
  final dynamic data;
  const DetailsSecreen(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  size=MediaQuery.of(context).size;
    final ThemeData them=Theme.of(context);
    double padding=25;
    final sidePadding=   EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            width: size.width,height: size.height,
            child: Stack(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(children: [
                 //   Image.network(data['image'],width: 420,),
                   Image.asset(data['image'],width: 420,),
                    const Positioned(
                      top: 15,right: 15,
                      child:  BorderBox(
                        width: 50,height: 50,
                        child: Icon(Icons.favorite_border),
                      ),
                    ),const Positioned(
                      top: 15,left: 15,
                      child:  BorderBox(
                        width: 50,height: 50,
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                  ],),
                  addVerticalSpace(padding),
                  Padding (
                    padding:sidePadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(formatCurrency(data['amount']),style:them.textTheme.headline3,),
                            addVerticalSpace(5),
                            Text(data['address'],style:them.textTheme.bodyText2,),
                          ],
                        ),
                        BorderBox(width: 140, height: 50,
                            child: Text("20 Hours ago",
                              style: them.textTheme.headline4,))


                      ],),
                  ),
                  addVerticalSpace(padding),
                  Padding(padding: sidePadding,
                    child:Text('House Information',style:them.textTheme.headline3,),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children:
                    ['1416','4','2','1','0'].map((e) =>
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: BorderBox(width: 80, height: 80,
                              child: Text(e,style: them.textTheme.headline3,)),
                        ))
                        .toList()

                      ,),
                  ),
                  addVerticalSpace(padding),
                  Expanded(child:
                  Padding(
                    padding: sidePadding,
                    child: SingleChildScrollView(
                      child: Text(data['description'],style: them.textTheme.headline1,),
                    ),
                  ))

                ],),
             Positioned(
               bottom: 14,
               left: size.width*0.1,
               child: Row(
                 children:  [
                     OptionButton(
                      width:size.width*0.35,
                      data:'Message',
                       iconData: Icons.message,
                    ),
                    addHorizontalSpace(10),
                    OptionButton(
                     width:size.width*0.35,
                     data:'Call',
                      iconData: Icons.call,

                    ),
                 ],
               ),
             ),
            ],),

        ),
      ),
    );
  }
}
