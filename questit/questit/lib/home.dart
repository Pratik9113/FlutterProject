import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('QuestIT'),
        centerTitle: true,
        foregroundColor: Colors.white,
        elevation: 10,
        shadowColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.amberAccent,
            height: 100,
            width: 100,
          ),
          Container(
            color: Colors.amberAccent,
            height: 100,
            width: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.amberAccent,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.amberAccent,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.amberAccent,
                height: 100,
                width: 100,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Button'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
