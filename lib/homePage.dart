import 'package:donuts/tab/burger_tab.dart';
import 'package:donuts/tab/donut_tab.dart';
import 'package:donuts/tab/pancake_tab.dart';
import 'package:donuts/tab/pizza_Tab.dart';
import 'package:donuts/tab/smoothie_tab.dart';
import 'package:donuts/util/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> myTabs=[
    MyTab(
      iconPath:'lib/icons/donut.png'
    ),
    MyTab(
        iconPath:'lib/icons/burger.png'
    ),
    MyTab(
        iconPath:'lib/icons/pancakes.png'
    ),
    MyTab(
        iconPath:'lib/icons/pizza.png'
    ),
    MyTab(
        iconPath:'lib/icons/smoothie.png'
    ),

  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.only(left:24.0),
            child: IconButton(
              icon: Icon(Icons.menu,
              color:Colors.grey[800],
              size: 36,
            ),
            onPressed: (){
                     //
            },
          ),
        ),
      actions: [
        Padding(padding: EdgeInsets.only(right: 24.0),
            child: IconButton(
            icon: Icon(
            Icons.person,
            color: Colors.grey[800],
            size: 36,
            ),
            onPressed: (){
              //
            },
      ),

      )
      ],
      ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 18.0 ),
              child: Row(
                children: [
                  Text("I want to eat", style:TextStyle(fontSize: 24, color: Colors.grey[600]),),

                  Text("EAT", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,color: Colors.grey[600]),)
                ],
              ),
            ),

            TabBar(tabs: myTabs,),
            Expanded(child: TabBarView(
              children: [
                //donut page
                DonutTab(),

                //burger
                BurgerTab(),

                //pancake
                PancakeTab(),

                //pizza
                PizzaTab(),

                //smoothie
                SmoothieTab(),

              ],
            ))
          ],
        ),

      ),
    );
  }
}
