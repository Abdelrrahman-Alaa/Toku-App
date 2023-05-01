import 'package:flutter/material.dart';
import 'package:tuko/Components/list_item.dart';
import 'package:tuko/models/item.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({Key? key}) : super(key: key);
  List<Item> numbers = [
    Item(
        enName: "One",
        jpName: "ichi",
        image: "assets/images/numbers/number_one.png",
        sound: 'number_one_sound.mp3'),
    Item(
        enName: "Two",
        jpName: "ni",
        image: "assets/images/numbers/number_two.png",
        sound: 'number_two_sound.mp3'),
    Item(
        enName: "Three",
        jpName: "san",
        image: "assets/images/numbers/number_three.png",
        sound: 'number_three_sound.mp3'),
    Item(
        enName: "Four",
        jpName: "shi, yon",
        image: "assets/images/numbers/number_four.png",
        sound: 'number_four_sound.mp3'),
    Item(
        enName: "Five",
        jpName: "go",
        image: "assets/images/numbers/number_five.png",
        sound: 'number_five_sound.mp3'),
    Item(
        enName: "Six",
        jpName: "roku",
        image: "assets/images/numbers/number_six.png",
        sound: 'number_six_sound.mp3'),
    Item(
        enName: "Seven",
        jpName: "shichi, nana",
        image: "assets/images/numbers/number_seven.png",
        sound: 'number_seven_sound.mp3'),
    Item(
        enName: "Eight",
        jpName: "hachi",
        image: "assets/images/numbers/number_eight.png",
        sound: 'number_eight_sound.mp3'),
    Item(
        enName: "Nine",
        jpName: "ku, kyuu",
        image: "assets/images/numbers/number_nine.png",
        sound: 'number_nine_sound.mp3'),
    Item(
        enName: "Ten",
        jpName: "juu",
        image: "assets/images/numbers/number_ten.png",
        sound: 'number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor: const Color(0xFF422F23),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListItem(
            item: numbers[index],
            color: const Color(0xFFF99430),
            itemType: 'numbers',
          );
        },
      ),
    );
  }
}
