import 'package:flutter/material.dart';

//SECTION - Counter Event
class CounterEvent {}

class Decrement extends CounterEvent {}

class Increment extends CounterEvent {}

//SECTION - Counter Bloc
class CounterBloc {}

//SECTION -

//SECTION - UI
class CounterApp2 extends StatelessWidget {
  const CounterApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "...",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, //background color
                  ),
                  onPressed: () {},
                  child: const Text("-"),
                ),
                const SizedBox(width: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, //background color
                  ),
                  onPressed: () {},
                  child: const Text("+"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
