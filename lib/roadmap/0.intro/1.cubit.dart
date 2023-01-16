import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//SECTION - Class Cubit
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  // CounterCubit(int initialState) : super(initialState);
  void decrement() {
    if (state > 0) {
      emit(state - 1);
    }
  }

  // void increment() {
  //   emit(state + 1);
  // }

  void increment() => emit(state + 1);
}

// ignore: must_be_immutable
class CubitBasicPage extends StatelessWidget {
  CubitBasicPage({super.key});

  //NOTE - Access Class Cubit
  CounterCubit myCounter = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        title: const Text("Cubit Basic"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
            stream: myCounter.stream,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return Center(
                  child: Text(
                    "${snapshot.data}",
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              }
              // return;
            },
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  myCounter.decrement();
                },
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {
                  myCounter.increment();
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
