import 'package:flutter/material.dart';

class CounterApp1 extends StatelessWidget {
  const CounterApp1({super.key});

  //function for Stream Data with Timer
  Stream countDataTimer() async* {
    int i = 0;
    //looping number 1 - 10
    for (i; i <= 10; i++) {
      //delay data with time
      await Future.delayed(
        const Duration(milliseconds: 200),
      );
      //return
      yield i;
    }

    yield "stop";
    int j = 10;
    for (j; j >= 0; j--) {
      //waiting data for 2 seconds
      await Future.delayed(
        const Duration(milliseconds: 500),
      );
      //return
      yield j;
    }

    yield "Done";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: StreamBuilder(
        stream: countDataTimer(),
        builder: (context, snapshot) {
          //condition loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Data Number
                Center(
                  child: Text(
                    "${snapshot.data}",
                    style: const TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            );
          }
        },
      ),
    );
  }
}
