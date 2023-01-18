import 'package:flutter/material.dart';

class BlocProviderPage extends StatelessWidget {
  const BlocProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Bloc Consumer"),
      ),
      // body: ,
    );
  }
}
