import 'package:beatuifuldesign/utils/constants.dart';
import 'package:flutter/cupertino.dart';

class BorderBox extends StatelessWidget {

     final Widget child;
     final EdgeInsets? padding;
     final double width,height;

  const BorderBox({super.key,  this.padding, required this.width,
              required this.height, required this.child});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,height: height,
      padding: padding??const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: COLOR_WHITE,
          borderRadius: BorderRadius.circular(15),
           border: Border.all(color: COLOR_GREY.withAlpha(40),width: 2),
         ),
      child: Center(child: child,),

    );
  }
}
