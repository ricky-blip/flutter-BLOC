import 'package:bloc_roadmap/roadmap/1.cubit/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/data_counter_widget.dart';

class BlocProviderPage extends StatelessWidget {
  BlocProviderPage({super.key});

  // CounterCubitBloc counterProvider = CounterCubitBloc();

  @override
  Widget build(BuildContext context) {
    CounterCubitBloc counterProvider =
        BlocProvider.of<CounterCubitBloc>(context);
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Bloc Provider"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15),
                    onTap: () {
                      counterProvider.decrementCubit();
                    },
                    child: const SizedBox(
                      width: 50,
                      height: 50,
                      child: Icon(Icons.remove),
                    ),
                  ),
                ),
                const DataCounterWidget(),
                Material(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15),
                    onTap: () {
                      counterProvider.incrementCubit();
                    },
                    child: const SizedBox(
                      width: 50,
                      height: 50,
                      child: Icon(Icons.add),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
