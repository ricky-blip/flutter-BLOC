import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubitObserver extends Cubit<int> {
  CounterCubitObserver() : super(0);

  void min() {
    if (state > 0) {
      emit(state - 1);
    }
  }

  void plus() => emit(state + 1);
}

class CubitObserver extends StatelessWidget {
  CubitObserver({super.key});

  CounterCubitObserver myCount = CounterCubitObserver();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        title: const Text("Cubit Observer"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
            stream: myCount.stream,
            builder: (context, snapshot) {
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
            },
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  myCount.min();
                },
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: () {
                  myCount.plus();
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
