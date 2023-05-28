import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gererated_routes_flutter_app/cubits/second_cubit.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPage();
}

class _SecondPage extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
              icon: Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: Center(
        child: BlocBuilder<SecondCubit, int>(
          builder: (context, state) {
            return Text(
              state.toString(),
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<SecondCubit>(context).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
