import 'package:donut_app_2b_sanchez/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
 final Function(double, String) addToCart; // <-- Nueva función para actualizar el contador

  // Constructor con parámetro obligatorio
  SmoothieTab({super.key, required this.addToCart});
  //Lista de donas
  final List donutsOnSale = [
    //[donutFlavor, donutPrice, donutColor, imageName]
    ["Strawberry","Jamba", "60", Colors.blue, "lib/images/fresa.png"],
    ["Banana", "Smoothie King", "45", Colors.green, "lib/images/banana.png", ],
    ["Special Rainbow","Boost Juice", "90", Colors.purple, "lib/images/rainbow.png", ],
    ["Orange", "Juice Generation", "50", Colors.brown, "lib/images/naranja.png", ],
     ["Avocado","Odwalla", "50", Colors.blue, "lib/images/avocado.png"],
    ["Mango", "Daily harvest", "45", Colors.green, "lib/images/Mango.png", ],
    ["Grape","Planet Smoothie", "44", Colors.purple, "lib/images/uva.png", ],
    ["Healthy", "Juice Bar", "35", Colors.brown, "lib/images/green.png", ],
  ];


  @override
  Widget build(BuildContext context) {
    // Para acomodar elementos en cuadricula
    return GridView.builder(
        //Cuantos elementos tengo
        itemCount: donutsOnSale.length,
        padding: const EdgeInsets.all(8.0),
        //Prepa 1: Organiza como distribuir elementos en la cuadricula
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //Numero de colummnas
            crossAxisCount: 2,
            //Relación de aspecto (Proporción)
            childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFLavor: donutsOnSale[index][0],
            donutEnterprise: donutsOnSale [index][1],
            donutPrice: donutsOnSale [index][2],
            donutColor: donutsOnSale[index][3],
            imageName: donutsOnSale[index][4], 
            addToCart: addToCart,
          );
        });
  }
}