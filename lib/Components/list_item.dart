import 'package:flutter/material.dart';
import 'package:tuko/models/item.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:tuko/models/phrases.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.item,
    required this.color,
    required this.itemType,
  }) : super(key: key);
  final Item item;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 75,
      child: Row(
        children: [
          Container(
            color: const Color(0xFFFFF4DB),
            child: Image.asset(
              item.image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.jpName,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
                Text(
                  item.enName,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              try {
                AudioCache player = AudioCache(
                  prefix: 'assets/sounds/$itemType/',
                );
                player.play(item.sound);
              } catch (ex) {
                print(ex);
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({
    Key? key,
    required this.phrases,
    required this.color,
    required this.itemType,
  }) : super(key: key);
  final Phrases phrases;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 75,
      child: Row(
        children: [
          
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  phrases.jpName,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                ),
                Text(
                  phrases.enName,
                  style: const TextStyle(fontSize: 16, color: Colors.white),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              try {
                AudioCache player = AudioCache(
                  prefix: 'assets/sounds/$itemType/',
                );
                player.play(phrases.sound);
              } catch (ex) {
                print(ex);
              }
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

