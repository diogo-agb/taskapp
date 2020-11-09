import 'package:flutter/material.dart';
import './screens/splash_screen.dart';
import './routes/app_routes.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Raleway',
      ),
      home: SplashScreen(),
      routes: {AppRoutes.LOGIN: (context) => HomeScreen()},
    );
  }
}
