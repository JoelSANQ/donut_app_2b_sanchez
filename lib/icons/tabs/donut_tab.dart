import 'package:donut_app_2b_sanchez/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  final Function(double, String) addToCart; // <-- Nueva función para actualizar el contador

  // Constructor con parámetro obligatorio
  DonutTab({super.key, required this.addToCart});

  // Lista de donas
  final List donutsOnSale = [
    ["Ice Cream", "krispy Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Manifesto", "45", Colors.green, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Bodega Aurrera", "30", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Italian Coffe", "70", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Mint", "Krispy Cream", "66", Colors.blue, "lib/images/dona_menta.png"],
    ["Bubblegum", "Walmart", "45", Colors.green, "lib/images/bubblegum.png"],
    ["Apple", "Soriana", "30", Colors.purple, "lib/images/apple.png"],
    ["Cheesecake", "Donkin Donuts", "85", Colors.brown, "lib/images/cheesecake.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(8.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFLavor: donutsOnSale[index][0],
          donutEnterprise: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
          addToCart: addToCart, // <-- Pasar función al Tile
        );
      },
    );
  }
}