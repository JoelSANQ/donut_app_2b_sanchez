import 'package:donut_app_2b_sanchez/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  final Function(double, String) addToCart; // <-- Nueva función para actualizar el contador

  // Constructor con parámetro obligatorio
  PancakesTab({super.key, required this.addToCart});
  //Lista de donas
  final List donutsOnSale = [
    //[donutFlavor, donutPrice, donutColor, imageName]
    ["Icecream Pancakes","El Globo", "90", Colors.blue, "lib/images/helado.png"],
    ["Extra Honey Pancakes", "El Globo", "80", Colors.green, "lib/images/ultra miel.png", ],
    ["Cream Pancakes","Esperanza", "90", Colors.purple, "lib/images/crema.png", ],
    ["Nutella Pancakes", "Starbucks", "95", Colors.brown, "lib/images/nutella.png", ],
     ["Krispy Pancakes","krispy Cream", "90", Colors.blue, "lib/images/krispy.png"],
    ["Mc pancakes", "McDonalds", "80", Colors.green, "lib/images/macpancakes.png", ],
    ["Blue Berry Pancakes","Italian Coffe", "88", Colors.purple, "lib/images/blue.png", ],
    ["Cookie Pancakes", "Ihop", "85", Colors.brown, "lib/images/galleta.png", ],
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