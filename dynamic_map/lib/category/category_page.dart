import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final smallDecoration = BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: const Color.fromARGB(255, 255, 255, 255),
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.15),
          blurRadius: 1.0,
          spreadRadius: 1.0,
          offset: const Offset(0, 2),
        ),
      ],
    );
    return Container(
      decoration: smallDecoration,
      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Category 1',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Icon(
            Icons.category,
            size: 30,
          ),
        ],
      ),
    );
  }
}
