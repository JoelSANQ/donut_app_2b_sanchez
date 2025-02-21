
import 'package:donut_app_2b_sanchez/icons/tabs/burguer_tab.dart';
import 'package:donut_app_2b_sanchez/icons/tabs/donut_tab.dart';
import 'package:donut_app_2b_sanchez/icons/tabs/pancakes_tab.dart';
import 'package:donut_app_2b_sanchez/icons/tabs/pizza_tab.dart';
import 'package:donut_app_2b_sanchez/icons/tabs/smoothie_tab.dart';
import 'package:donut_app_2b_sanchez/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    //donut tab
    MyTab(iconPath: "lib/icons/donut.png",),
    //donut tab
    MyTab(iconPath: "lib/icons/burger.png",),
    //donut tab
    MyTab(iconPath: "lib/icons/pancakes.png",),
    //donut tab
    MyTab(iconPath: "lib/icons/pizza.png",),
    //donut tab
    MyTab(iconPath: "lib/icons/smoothie.png",),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    length: 5,
    child: Scaffold(
    appBar: AppBar(
          backgroundColor: Colors.transparent, 
          //icono izquierdo
          leading: Icon(
            Icons.menu, 
            color: Colors.grey[800]), 
          //icodo derecho
          actions: [Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(Icons.person),
          )],
        ),
      
      
        body: Column(children: [
          //texto
        Padding(padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18))
        ,Row(
          children: [
            Text("I Want to ", style: TextStyle( fontSize: 30 )),
            Text("eat", 
               style: TextStyle(
               fontSize: 30 ,
               fontWeight: FontWeight.bold,
               decoration: TextDecoration.underline))
          ],
        ),  
 
TabBar(tabs: myTabs),
      //tab bar view
Expanded(
  child: TabBarView(children: [ 
  DonutTab() ,
   BurguerTab(),
   PancakesTab(),
   PizzaTab(),
   SmoothieTab(),]),
)  

        
      // carrito
      
      
        ],)
      ),
    );
  }
}