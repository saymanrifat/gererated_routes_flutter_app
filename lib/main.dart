import 'package:flutter/material.dart';
import 'package:gererated_routes_flutter_app/routes.dart';

void main() {
  runApp(HomePages());
}

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Routes.onGeneratedRoute,
      initialRoute: '/first',
    );
  }
}
