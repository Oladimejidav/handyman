import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:services_app/Constant/constant.dart';
import 'package:services_app/Splash/splash_screen.dart';
import 'package:services_app/auth/homepage.dart';
import 'package:services_app/provider/provider.dart';

void main() => runApp(ChangeNotifierProvider<Update>(
      create: (_) => Update(),
      child: MaterialApp(
        home: const AnimatedSplashScreen(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryIconTheme: const IconThemeData(color: Colors.black),
            primaryColor: Colors.black,
            appBarTheme: const AppBarTheme(
              color: Colors.black,
              iconTheme: IconThemeData(color: Colors.white),
            )),
        routes: <String, WidgetBuilder>{
          SPLASH_SCREEN: (BuildContext context) => const AnimatedSplashScreen(),
          HOME_SCREEN: (BuildContext context) => const MyApp(),
        },
      ),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: const Homepage(),
    );
  }
}
