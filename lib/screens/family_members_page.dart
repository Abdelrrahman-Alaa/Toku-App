import 'package:flutter/material.dart';
import 'package:tuko/Components/list_item.dart';
import 'package:tuko/models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  FamilyMembersPage({Key? key}) : super(key: key);
  List<Item> familyMembers = [
    Item(
        enName: "Daughter",
        jpName: "Musume",
        image: "assets/images/family_members/family_daughter.png",
        sound: 'daughter.wav'),
    Item(
        enName: "Father",
        jpName: "Chichioya",
        image: "assets/images/family_members/family_father.png",
        sound: 'father.wav'),
    Item(
        enName: "Grandfather",
        jpName: "Ojīsan",
        image: "assets/images/family_members/family_grandfather.png",
        sound: 'grand father.wav'),
    Item(
        enName: "Grandmother",
        jpName: "O bāchan",
        image: "assets/images/family_members/family_grandmother.png",
        sound: 'grand mother.wav'),
    Item(
        enName: "Mother",
        jpName: "Hahaoya",
        image: "assets/images/family_members/family_mother.png",
        sound: 'mother.wav'),
    Item(
        enName: "Older Brother",
        jpName: "Ani",
        image: "assets/images/family_members/family_older_brother.png",
        sound: 'older bother.wav'),
    Item(
        enName: "Older Sister",
        jpName: "Ane",
        image: "assets/images/family_members/family_older_sister.png",
        sound: 'older sister.wav'),
    Item(
        enName: "Son",
        jpName: "Musuko",
        image: "assets/images/family_members/family_son.png",
        sound: 'son.wav'),
    Item(
        enName: "Younger Brother",
        jpName: "Otōto",
        image: "assets/images/family_members/family_younger_brother.png",
        sound: 'younger brohter.wav'),
    Item(
        enName: "Younger Sister",
        jpName: "Imōto",
        image: "assets/images/family_members/family_younger_sister.png",
        sound: 'younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF528031),
        title: const Text('Family Members'),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return ListItem(
            item: familyMembers[index],
            color: const Color(0xFF528031),
            itemType: 'family_members',
          );
        },
      ),
    );
  }
}
