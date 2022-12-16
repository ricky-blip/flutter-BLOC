import 'package:flutter/material.dart';

class StreamPage extends StatelessWidget {
  const StreamPage({super.key});

  //function for data stream
  Stream<int> countData() async* {
    //looping number 1 - 10
    for (var i = 0; i <= 100; i++) {
      //waiting data for 2 seconds
      await Future.delayed(
        const Duration(milliseconds: 100),
      );
      //return
      yield i;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stream Apps Page"),
      ),
      body: StreamBuilder(
        stream: countData(),
        builder: (context, snapshot) {
          //condition loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "${snapshot.data}",
                    style: const TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     ElevatedButton(
                //       onPressed: () {},
                //       child: Text("-"),
                //     ),
                //     const SizedBox(width: 50),
                //     ElevatedButton(
                //       onPressed: () {},
                //       child: Text("+"),
                //     ),
                //   ],
                // ),
              ],
            );
          }
        },
      ),
    );
  }
}
