import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter.dart';

class BlocBuilderPage extends StatelessWidget {
  BlocBuilderPage({super.key});

  //Access Class Counter
  CounterCubitBloc counterC = CounterCubitBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Bloc Builder"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterCubitBloc, int>(
            buildWhen: (previous, current) {
              //default buildwhen is return true
              // return true;
              if (current % 2 == 0) {
                return true;
              } else {
                return false;
              }
            },
            bloc: counterC,
            builder: (context, state) {
              return Center(
                child: Column(
                  children: [
                    Text(
                      "$state",
                      style: const TextStyle(
                        fontSize: 50,
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          //NOTE - Using StreamBuilder
          // StreamBuilder(
          //   initialData: counterC.init,
          //   stream: counterC.stream,
          //   builder: (context, snapshot) {
          //     return Center(
          //       child: Column(
          //         children: [
          //           Text(
          //             "${snapshot.data}",
          //             style: const TextStyle(
          //               fontSize: 50,
          //               color: Colors.deepPurpleAccent,
          //               fontWeight: FontWeight.bold,
          //             ),
          //           ),
          //         ],
          //       ),
          //     );
          //   },
          // ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  counterC.decrementCubit();
                },
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {
                  counterC.incrementCubit();
                },
                icon: const Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
