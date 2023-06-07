import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protos/protos.dart';

import 'counter_cubit.dart';
import 'counter_repo.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RepositoryProvider(
        create: (context) => CounterRepo(),
        child: const HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: context.read<CounterRepo>().ready,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            body: BlocProvider(
              create: (context) => CounterCubit(context.read<CounterRepo>()),
              child: Scaffold(
                body: Center(
                  child: BlocBuilder<CounterCubit, CounterState>(
                    builder: (context, state) {
                      return Text('Current value: ${state.value}');
                    },
                  ),
                ),
                floatingActionButton: Builder(builder: (context) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FloatingActionButton(
                        onPressed: context.read<CounterCubit>().decrement,
                        child: const Icon(Icons.remove),
                      ),
                      const SizedBox(width: 10),
                      FloatingActionButton(
                        onPressed: context.read<CounterCubit>().increment,
                        child: const Icon(Icons.add),
                      ),
                    ],
                  );
                }),
              ),
            ),
          );
        }
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
