import 'package:donut_app_2b_sanchez/utils/donut_tile.dart';
import 'package:flutter/material.dart';


class BurguerTab extends StatelessWidget {
  final Function(double, String) addToCart; // <-- Nueva función para actualizar el contador

  // Constructor con parámetro obligatorio
  BurguerTab({super.key, required this.addToCart});
  //Lista de donas
  final List donutsOnSale = [
    //[donutFlavor, donutPrice, donutColor, imageName]
    ["Whopper Jr","Burguer King", "70", Colors.blue, "lib/images/whoper.png"],
    ["King de pollo", "Burguer King", "90", Colors.green, "lib/images/king.png", ],
    ["Stacker XL","Burguer King", "135", Colors.purple, "lib/images/baconator.png", ],
    ["Jack Daniels", "Big Apple", "150", Colors.brown, "lib/images/jack.png", ],
     ["BBQ Burguer","Fridays", "160", Colors.blue, "lib/images/BBQ.png"],
    ["Hawaiana", "Delicias JK", "100", Colors.green, "lib/images/hawai.png", ],
    ["Big Mac","Mcdonalds", "120", Colors.purple, "lib/images/bonles.png", ],
    ["Famous Star", "Carls Jr", "150", Colors.brown, "lib/images/famous.png", ],
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