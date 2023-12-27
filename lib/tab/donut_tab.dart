import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

class DonutTab extends StatelessWidget {

  //list of donuts
  List donutsOnSale=[
    //donutFlavor, donutPrice, donutColor, ImageName
    ["Ice Cream", "30", Colors.blue,"lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red,"lib/images/strawberry_donut.png"],
    ["Grape Ape", "50", Colors.purple,"lib/images/chocolate_donut.png"],
    ["Chocolate", "55", Colors.brown,"lib/images/chocolate_donut.png"]
];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1/1.5
        ) , itemBuilder: (context,index){
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          ImageName: donutsOnSale[index][3]


        );
    }
    );
  }
}
