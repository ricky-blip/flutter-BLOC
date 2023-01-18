import 'package:bloc_roadmap/roadmap/1.cubit/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocListenerPage extends StatelessWidget {
  BlocListenerPage({super.key});

  CounterCubitBloc listenerC = CounterCubitBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Bloc Listener"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //BlocListener
          BlocListener<CounterCubitBloc, int>(
            bloc: listenerC,
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
                  content: Text("Listener"),
                ),
              );
            },
            //NOTE - BlocBuilder
            child: BlocBuilder<CounterCubitBloc, int>(
              bloc: listenerC,
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
          ),

          //NOTE - Button - +
          // FloatingActionButton(
          //   splashColor: Colors.black,
          //   backgroundColor: Colors.deepOrange,
          //   onPressed: () {
          //     listenerC.decrementCubit();
          //   },
          //   child: const Icon(Icons.remove),
          // ),
          FloatingActionButton(
            backgroundColor: Colors.deepOrange,
            splashColor: Colors.black,
            onPressed: () {
              listenerC.incrementCubit();
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
