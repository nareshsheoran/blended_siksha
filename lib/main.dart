import 'package:blended_siksha/login/front_page.dart';
import 'package:blended_siksha/shared/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FrontPage(),
      initialRoute: Routes.FRONT_PAGE,
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
