import 'package:beatuifuldesign/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChoiceOption extends StatelessWidget {

   final String data;
  const ChoiceOption({required this.data});

  @override
  Widget build(BuildContext context) {
     final ThemeData themeData=Theme.of(context);
    return Container(
            decoration: BoxDecoration(
              color: COLOR_GREY.withAlpha(25),
              borderRadius:BorderRadius.circular(20)
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 13),
            margin: const EdgeInsets.only(left: 25),
            child: Text(data,style: themeData.textTheme.headline5,),

    );
  }
}
