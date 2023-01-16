import 'package:bloc_roadmap/roadmap/0.intro/0.stream/counter_app_2.dart';
import 'package:flutter/material.dart';

import 'counter_app_1.dart';

class StreamPage extends StatelessWidget {
  const StreamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        title: const Text("Stream Counter App"),
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
                        builder: (context) => const CounterApp1(),
                      ),
                    );
                  },
                  child: const Text("Counter App Stream (Timer) Concept"),
                ),
                const SizedBox(height: 5),
                //1. Basic Cubit
                ElevatedButton(
                  onPressed: () {
                    //to Cubit Page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CounterApp2(),
                      ),
                    );
                  },
                  child: const Text(
                    "Counter App Stream (Button) \nStreamController & StreamBuilder",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
