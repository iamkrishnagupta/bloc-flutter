import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:counter_app/inc_dec_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  final counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {

    //!don't need them since we are using Blocproviders
    // final counterCubit = BlocProvider.of<CounterCubit>(context);
    // final counterBloc = BlocProvider.of<CounterBloc>(context);

//if we do this, it works but entire builder has to rebuild again and again
    // return
    // BlocBuilder<CounterCubit, int>(
    //else it will remain an object
    // bloc: counterCubit,
    // builder: (context, counter) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            //so we put it here
            // BlocBuilder<CounterCubit, int>(
            //     bloc: counterCubit,
              BlocBuilder<CounterBloc, int>(
                // bloc: counterBloc,
                builder: (context, counter) {
                  return Text(
                    '$counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const IncDecPage(),
            ),
          );
        },
        child: const Icon(Icons.navigate_next_rounded),
      ),
    );
    // });
  }
}
