
import 'package:beatuifuldesign/custom/BorderBox.dart';
import 'package:beatuifuldesign/screens/DetailsSecreen.dart';
import 'package:beatuifuldesign/utils/custome_functions.dart';
import 'package:beatuifuldesign/utils/widget_functions.dart';
import 'package:flutter/material.dart';

class CityItem extends StatelessWidget {
  final dynamic data;
  const CityItem({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData=Theme.of(context);
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return DetailsSecreen(data);
        }));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(data['image'])),
                  const Positioned(
                        top: 15,
                         right: 15,
                      child:
                      BorderBox(height: 50,width: 50,
                       child: Icon(Icons.favorite_border_outlined,color: Colors.black,),
                  ))
                ],),
              addVerticalSpace(10),
              Row(children: [
                Text(formatCurrency(data["amount"]),style:
                themeData.textTheme.headline1,),
                addHorizontalSpace(10),
                Text(data["address"],style:
                themeData.textTheme.bodyText2,),

              ],),
              Text("${data["bedrooms"]} bedrooms"
                  "  ${data["bathrooms"]} bathrooms "
                  "  ${data["area"]} ",
                style:
                themeData.textTheme.headline5,),

            ],),

      ),
    );
  }
}
