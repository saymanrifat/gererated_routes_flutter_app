import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gererated_routes_flutter_app/cubits/first_cubit.dart';
import 'package:gererated_routes_flutter_app/cubits/third_cubit.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPage();
}

class _ThirdPage extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: BlocBuilder<ThirdCubit, int>(
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
          BlocProvider.of<ThirdCubit>(context).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
