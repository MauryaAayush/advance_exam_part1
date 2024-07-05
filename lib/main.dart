import 'package:advance_exam_part1/Screens/Controller/NewsProvider.dart';
import 'package:advance_exam_part1/Screens/Views/SplashScreen/Splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
  ChangeNotifierProvider(create: (context) => NewsProvider(),

    builder: (context, child) => MyApp(),));

  //     MultiProvider(
  //   providers: [
  //     ChangeNotifierProvider(
  //       create: (context) => NewsProvider(),
  //     )
  //   ],
  //   child: const MyApp(),
  // ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),
    );
  }
}
