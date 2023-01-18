import 'package:bloc_roadmap/roadmap/1.cubit/bloc/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataCounterWidget extends StatelessWidget {
  const DataCounterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //NOTE - Access Class with BlocProvider using context.read
    CounterCubitBloc dataCounter = context.read<CounterCubitBloc>();
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueAccent,
      ),
      width: 100,
      height: 100,
      child: Center(
        child: BlocBuilder(
          bloc: dataCounter,
          builder: (context, state) => Text(
            "$state",
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
