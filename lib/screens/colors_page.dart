import 'package:flutter/material.dart';
import 'package:tuko/Components/list_item.dart';
import 'package:tuko/models/item.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({Key? key}) : super(key: key);
  List<Item> colors = [
    Item(
        enName: "Black",
        jpName: "Kuro",
        image: "assets/images/colors/color_black.png",
        sound: 'black.wav'),
    Item(
        enName: "Brown",
        jpName: "Chairo",
        image: "assets/images/colors/color_brown.png",
        sound: 'brown.wav'),
    Item(
        enName: "Dusty Yellow",
        jpName: "Dasutiierō",
        image: "assets/images/colors/color_dusty_yellow.png",
        sound: 'dusty yellow.wav'),
    Item(
        enName: "Gray",
        jpName: "Gurē",
        image: "assets/images/colors/color_gray.png",
        sound: 'gray.wav'),
    Item(
        enName: "Green",
        jpName: "Midori",
        image: "assets/images/colors/color_green.png",
        sound: 'green.wav'),
    Item(
        enName: "Red",
        jpName: "Aka",
        image: "assets/images/colors/color_red.png",
        sound: 'red.wav'),
    Item(
        enName: "White",
        jpName: "Shiro",
        image: "assets/images/colors/color_white.png",
        sound: 'white.wav'),
    Item(
        enName: "Yellow",
        jpName: "Kiiro",
        image: "assets/images/colors/color_yellow.png",
        sound: 'yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7C3FA1),
      appBar: AppBar(
        backgroundColor: const Color(0xFF7C3FA1),
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ListItem(
            item: colors[index],
            color: const Color(0xFF7C3FA1),
            itemType: 'colors',
          );
        },
      ),
    );
  }
}
