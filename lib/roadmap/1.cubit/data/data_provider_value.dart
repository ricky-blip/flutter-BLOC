import 'dart:developer';

import 'package:bloc_roadmap/roadmap/1.cubit/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataProviderValue extends StatelessWidget {
  const DataProviderValue({super.key});

  @override
  Widget build(BuildContext context) {
    CounterCubitBloc counterC = context.read<CounterCubitBloc>();
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text("Bloc Provider Value"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "The Data is :",
            style: TextStyle(
              color: Colors.lightGreenAccent,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.greenAccent,
              ),
              width: 100,
              height: 100,
              child: Center(
                child: BlocBuilder(
                  bloc: counterC,
                  builder: (context, state) => Text(
                    "$state",
                    style: const TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
