import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubitObserver extends Cubit<int> {
  CounterCubitObserver({this.customData = 0}) : super(customData);

  int customData;

  //SECTION - Observer
  int? currentNumber;
  int? nextNumber;

  void min() {
    if (state > customData) {
      emit(state - 1);
    }
  }

  void plus() => emit(state + 1);

  //NOTE - we can observe data : onChange, onError etc.
  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
    currentNumber = change.currentState;
    nextNumber = change.nextState;
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print(error);
  }
}

class CubitObserver extends StatelessWidget {
  CubitObserver({super.key});

  CounterCubitObserver myCount = CounterCubitObserver(customData: 77);

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
            initialData: myCount.customData,
            stream: myCount.stream,
            builder: (context, snapshot) {
              return Center(
                child: Column(
                  children: [
                    Text(
                      "${snapshot.data}",
                      style: const TextStyle(
                        fontSize: 50,
                        color: Colors.deepPurpleAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Current : ${myCount.currentNumber}",
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Next : ${myCount.nextNumber}",
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
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
