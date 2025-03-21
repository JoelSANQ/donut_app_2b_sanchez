import 'package:donut_app_2b_sanchez/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
 final Function(double, String) addToCart; // <-- Nueva función para actualizar el contador

  // Constructor con parámetro obligatorio
  PizzaTab({super.key, required this.addToCart});
  //Lista de donas
  final List donutsOnSale = [
    //[donutFlavor, donutPrice, donutColor, imageName]
    ["Camarones","Dominos", "170", Colors.blue, "lib/images/camarones.png"],
    ["Extra queso", "Pizza Hut", "200", Colors.green, "lib/images/extra_queso.png", ],
    ["Mexicana","Supper Pizza", "150", Colors.purple, "lib/images/mexicana.png", ],
    ["Carnes Frias", "Little Caesars", "100", Colors.brown, "lib/images/pizza_carnes_frias.png", ],
     ["Solo Queso","Costco", "200", Colors.blue, "lib/images/Orilla.png"],
    ["Deep Dish", "New York", "220", Colors.green, "lib/images/deepdish.png", ],
    ["Peperoni","Soriana", "135", Colors.purple, "lib/images/peperoni.png", ],
    ["Espinacas", "Chepys Pizza", "200", Colors.brown, "lib/images/espinacas.png", ],
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