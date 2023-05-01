import 'package:flutter/material.dart';
import 'package:tuko/models/phrases.dart';
import 'package:tuko/Components/list_item.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({Key? key}) : super(key: key);
  List<Phrases> phrases = [
    Phrases(
        enName: "Are you coming",
        jpName: "Kimasu ka",
        sound: 'are_you_coming.wav'),
    Phrases(
      enName: "Don't forget to subscribe ",
      jpName: "Kōdoku suru koto o wasurenaide kudasai",
      sound: 'dont_forget_to_subscribe.wav',
    ),
    Phrases(
        enName: "How are you feeling",
        jpName: "Go kibun wa ikagadesu ka",
        sound: 'how_are_you_feeling.wav'),
    Phrases(
        enName: "I love anime",
        jpName: "Watashi wa anime ga daisukidesu",
        sound: 'i_love_anime.wav'),
    Phrases(
        enName: "I love programming",
        jpName: "Puroguramingu ga daisuki",
        sound: 'i_love_programming.wav'),
    Phrases(
      enName: "What is your name",
      jpName: "Namae wa nandesu ka",
      sound: 'what_is_your_name.wav',
    ),
    Phrases(
      enName: "Where are you going",
      jpName: "Doko ni iku no",
      sound: 'where_are_you_going.wav',
    ),
    Phrases(
      enName: "Yes i am coming",
      jpName: "Hai, kimasu",
      sound: 'yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF46A5CA),
      appBar: AppBar(
        backgroundColor: const Color(0xFF46A5CA),
        title: const Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhrasesItem(
            phrases: phrases[index],
            color: const Color(0xFF46A5CA),
            itemType: "phrases",
          );
        },
      ),
    );
  }
}
