import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gererated_routes_flutter_app/cubits/first_cubit.dart';
import 'package:gererated_routes_flutter_app/pages/first_page.dart';

void main() {
  runApp(HomePages());
}

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FirstCubit(),
      child: MaterialApp(
        home: FirstPage(),
      ),
    );
  }
}
