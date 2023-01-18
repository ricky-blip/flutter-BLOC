import 'package:bloc_roadmap/roadmap/0.intro/0.stream/stream_page.dart';
import 'package:bloc_roadmap/roadmap/0.intro/1.cubit.dart';
import 'package:bloc_roadmap/roadmap/0.intro/2.cubit_observer.dart';
import 'package:bloc_roadmap/roadmap/1.cubit/0.bloc_builder.dart';
import 'package:bloc_roadmap/roadmap/1.cubit/1.bloc_listener.dart';
import 'package:bloc_roadmap/roadmap/1.cubit/2.bloc_consumer.dart';
import 'package:bloc_roadmap/roadmap/1.cubit/3.bloc_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
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
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {
                    //to Stream Page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const StreamPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Stream",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 5),
                //1. Basic Cubit
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {
                    //to Cubit Page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CubitBasicPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Cubit (basic)",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 5),
                //2. Cubit Observer
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CubitObserver(),
                      ),
                    );
                  },
                  child: const Text(
                    "Cubit Observer",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 5),
                //3. Bloc Builder
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BlocBuilderPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Bloc Builder",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 5),
                //4. Bloc Listener
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BlocListenerPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Bloc Listener",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 5),
                //5. Bloc Consumer
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BlocConsumerPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Bloc Consumer",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                //6. Bloc Provider
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BlocProviderPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Bloc Provider",
                    style: TextStyle(color: Colors.black),
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
