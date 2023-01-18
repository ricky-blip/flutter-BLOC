import 'package:bloc_roadmap/roadmap/1.cubit/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocConsumerPage extends StatelessWidget {
  BlocConsumerPage({super.key});

  CounterCubitBloc consumerC = CounterCubitBloc();

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //NOTE - BLocConsumer
          BlocConsumer<CounterCubitBloc, int>(
            bloc: consumerC,
            listenWhen: (previous, current) {
              if (current % 3 == 0) {
                return true;
              } else {
                return false;
              }
            },
            listener: (context, state) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  duration: Duration(milliseconds: 10),
                  content: Text("Consumer"),
                ),
              );
            },
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

          //NOTE - Button - +
          // FloatingActionButton(
          //   splashColor: Colors.black,
          //   backgroundColor: Colors.deepOrange,
          //   onPressed: () {
          //     consumerC.decrementCubit();
          //   },
          //   child: const Icon(Icons.remove),
          // ),
          FloatingActionButton(
            backgroundColor: Colors.deepOrange,
            splashColor: Colors.black,
            onPressed: () {
              consumerC.incrementCubit();
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
