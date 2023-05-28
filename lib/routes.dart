import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gererated_routes_flutter_app/cubits/first_cubit.dart';
import 'package:gererated_routes_flutter_app/cubits/second_cubit.dart';
import 'package:gererated_routes_flutter_app/cubits/third_cubit.dart';
import 'package:gererated_routes_flutter_app/pages/first_page.dart';
import 'package:gererated_routes_flutter_app/pages/second_page.dart';
import 'package:gererated_routes_flutter_app/pages/third_page.dart';

class Routes {
  static Route? onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/first":
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => FirstCubit(),
            child: FirstPage(),
          ),
        );
      case "/second":
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SecondCubit(),
            child: SecondPage(),
          ),
        );
      case "/third":
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => ThirdCubit(),
            child: ThirdPage(),
          ),
        );

      default:
        return null;
    }
  }
}
