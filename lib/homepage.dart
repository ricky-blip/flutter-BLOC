import 'package:bloc_roadmap/roadmap/0.stream.dart';
import 'package:bloc_roadmap/roadmap/1.cubit.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Center(
          child: Text('Bloc HomePage'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Column(
              children: [
                //0. Stream
                ElevatedButton(
                  onPressed: () {
                    //to Stream Page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StreamPage(),
                      ),
                    );
                  },
                  child: const Text("Stream (Concept)"),
                ),
                const SizedBox(height: 10),
                //1. Basic Cubit
                ElevatedButton(
                  onPressed: () {
                    //to Cubit Page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CubitBasicPage(),
                      ),
                    );
                  },
                  child: const Text("Cubit (basic)"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
