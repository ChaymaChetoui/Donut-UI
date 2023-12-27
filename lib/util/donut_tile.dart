import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final donutColor;
  final String ImageName;
  const DonutTile({Key? key,
    required this.donutColor,
    required this.donutFlavor,
    required this.donutPrice,
    required this.ImageName
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(12.0),
    child: Container(
      decoration: BoxDecoration(
        color: donutColor[50],
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          //price
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: donutColor[100],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                  ),
                ),
                padding: EdgeInsets.all(12),
                child: Text(
                  '\$$donutPrice'
                      ,style: TextStyle(color: donutColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                ),
              )
            ],
          ),

          //donut picture
          Padding(padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 16),
          child: Image.asset(ImageName),
          ),

          //donutFlavor
          Text(donutFlavor,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),

          ),

          Text(
            'Dunkins',
            style: TextStyle(color: Colors.grey),
          ),

          //love icon + add button

          Padding(padding: EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.favorite, color: Colors.pink,),
              Icon(Icons.add,color: Colors.grey,)
            ],
          ),
          )

        ],
      ),
    ),);
  }
}
