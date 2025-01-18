import 'package:dynamic_map/category/category_page.dart';
import 'package:dynamic_map/category/suggested_videos.dart';
import 'package:flutter/material.dart';

class HomeSectionPage extends StatelessWidget {
  const HomeSectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final decoration = BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: const Color.fromARGB(255, 255, 255, 255),
        width: 2.0,
      ),
      borderRadius: BorderRadius.circular(24),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.15),
          blurRadius: 0.0,
          spreadRadius: 0.1,
          offset: const Offset(0, 2),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Truck Map',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        backgroundColor: Colors.grey[50],
        actions: [
          IconButton(
            onPressed: () {},
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.notifications),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: decoration,
                padding: EdgeInsetsGeometry.lerp(
                    EdgeInsets.all(10.0), EdgeInsets.all(30.0), 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'LATEST\nUPDATE',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: Text(
                              'High Alert Indore',
                              style: Theme.of(context).textTheme.titleSmall,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: Text(
                              'Gate 43 is Closed',
                              style: Theme.of(context).textTheme.titleSmall,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: Text(
                              'Bus Accident near Dewas',
                              style: Theme.of(context).textTheme.titleSmall,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            // Categories Sections
            Wrap(
              spacing: 12.0, // Horizontal spacing between items
              runSpacing: 16.0,
              children: List.generate(
                6,
                (index) => CategoryPage(),
              ),
            ),
            SuggestedVideos(
              title: 'Rules and Regulation',
              description:
                  'Discover the path you drive safe and you assured your safety with dynamic map and safe environment',
              icon: Icons.local_police,
            ),
          ],
        ),
      ),
    );
  }
}
