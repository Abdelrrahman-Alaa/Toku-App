import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({
    super.key,
    required this.text,
    required this.color,
    this.onTAp,
  });
  String text;
  Color color;
  Function()? onTAp;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTAp,
      child: Container(
        width: double.infinity,
        color: color,
        padding: const EdgeInsets.all(20),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
