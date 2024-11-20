import 'package:flutter/material.dart';

import 'features/auth/splash_on-board/view/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'News App',
      home: SplashScreen()
    );
  }
}
