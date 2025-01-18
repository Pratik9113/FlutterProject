import 'package:flutter/material.dart';

class SuggestedVideos extends StatelessWidget {
  const SuggestedVideos({
    Key? key,
    required this.title,
    required this.description,
    this.icon = Icons.fire_truck,
  }) : super(key: key);

  final String title;
  final String description;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final decoration = BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.grey.shade300, width: 1.0),
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.15),
          blurRadius: 0.0,
          spreadRadius: 0.1,
          offset: const Offset(0, 2),
        ),
      ],
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: decoration,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    '$title\n\n$description',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontSize: 14),
                  ),
                ),
                const SizedBox(width: 12),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Icon(
                    icon,
                    size: 60,
                    color: Colors.redAccent,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'View All',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.red,
                  size: 15,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
