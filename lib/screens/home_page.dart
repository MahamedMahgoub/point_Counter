import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:point_counter/components/components.dart';
import 'package:point_counter/cubit/counter_cubit.dart';
import 'package:point_counter/cubit/counter_state.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<CounterCubit>(context);

    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.orange,
            centerTitle: true,
            title: const Text('Points Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${cubit.teamAPoints}',
                          style: const TextStyle(
                            fontSize: 150,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        defaultButtom(
                          text: 'Add 1 Point',
                          onPressed: () {
                            cubit.teamIncrement(teamName: 'A', buttomNumber: 1);
                          },
                        ),
                        defaultButtom(
                            onPressed: () {
                              cubit.teamIncrement(
                                  teamName: 'A', buttomNumber: 2);
                            },
                            text: 'Add 2 Point'),
                        defaultButtom(
                            onPressed: () {
                              cubit.teamIncrement(
                                  teamName: 'A', buttomNumber: 3);
                            },
                            text: 'Add 3 Point'),
                      ],
                    ),
                    const VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 15,
                    ),
                    Column(
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${cubit.teamBPoints}',
                          style: const TextStyle(
                            fontSize: 150,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        defaultButtom(
                            onPressed: () {
                              cubit.teamIncrement(
                                  teamName: 'B', buttomNumber: 1);
                            },
                            text: 'Add 1 Point'),
                        defaultButtom(
                            onPressed: () {
                              cubit.teamIncrement(
                                  teamName: 'B', buttomNumber: 2);
                            },
                            text: 'Add 2 Point'),
                        defaultButtom(
                            onPressed: () {
                              cubit.teamIncrement(
                                  teamName: 'B', buttomNumber: 3);
                            },
                            text: 'Add 3 Point'),
                      ],
                    ),
                  ],
                ),
              ),
              defaultButtom(
                  onPressed: () {
                    cubit.teamIncrement(teamName: 'c', buttomNumber: 0);
                  },
                  text: 'Rest'),
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
