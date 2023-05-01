import 'package:flutter/material.dart';
import 'package:tuko/Components/components_items.dart';
import 'package:tuko/screens/colors_page.dart';
import 'package:tuko/screens/family_members_page.dart';
import 'package:tuko/screens/numbers_page.dart';
import 'package:tuko/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        title: const Text('Tuko'),
        backgroundColor: const Color(0xFF483229),
      ),
      body: Column(
        children: [
          Category(
            onTAp: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NumbersPage();
                  },
                ),
              );
            },
            text: 'Number',
            color: const Color(0xFFF99430),
          ),
          Category(
            onTAp: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FamilyMembersPage();
                  },
                ),
              );
            },
            text: "Family members",
            color: const Color(0xFF528031),
          ),
          Category(
            onTAp: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ColorsPage();
                  },
                ),
              );
            },
            text: "Colors",
            color: const Color(0xFF7C3FA1),
          ),
          Category(
            onTAp: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return PhrasesPage();
                  },
                ),
              );
            },
            text: "Phrases",
            color: const Color(0xFF46A5CA),
          ),
        ],
      ),
    );
  }
}
