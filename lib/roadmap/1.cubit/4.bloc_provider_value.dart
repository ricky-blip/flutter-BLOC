import 'package:bloc_roadmap/roadmap/1.cubit/bloc/counter.dart';
import 'package:bloc_roadmap/roadmap/1.cubit/data/data_provider_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widget/data_counter_widget.dart';

class BlocProviderValuePage extends StatelessWidget {
  const BlocProviderValuePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Access Class via BlocProvider using blocProvider.of(context)
    CounterCubitBloc counterProvider =
        BlocProvider.of<CounterCubitBloc>(context);
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Bloc Provider Value"),
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
                  color: Colors.green,
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
                  color: Colors.green,
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
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BlocProvider.value(
                value: counterProvider,
                child: DataProviderValue(),
              ),
            ),
          );
        },
        tooltip: 'Send Data',
        icon: const Icon(Icons.send),
        label: const Text('Sending Data Counter'),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
