import 'package:beatuifuldesign/utils/constants.dart';
import 'package:beatuifuldesign/utils/widget_functions.dart';
import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final width;
  final data;
  final iconData;
  const OptionButton({Key? key, this.width, this.data, this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
       child: MaterialButton(
            color: COLOR_DARK_BLUE,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(50)
           ),
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
           onPressed: (){},
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(data,style: TextStyle(color: Colors.white),),
               addHorizontalSpace(10),
               Icon(iconData,color: Colors.white,)
             ],

           )),

    );
  }
}
