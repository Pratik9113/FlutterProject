import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderRadius: BorderRadius.horizontal(
        left: Radius.circular(20),
        right: Radius.circular(20),
      ),
      borderSide: BorderSide(color: Color.fromARGB(255, 147, 147, 147)),
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: const InputDecoration(
              hintText: 'Search here',
              prefixIcon: Icon(Icons.location_pin),
              suffixIcon: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.mic),
                    SizedBox(width: 10),
                    Icon(Icons.camera_alt_outlined),
                    SizedBox(width: 10),
                    Icon(Icons.person),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              border: border,
            ),
          ),
        ),
      ),
    );
  }
}
