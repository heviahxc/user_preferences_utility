import 'package:flutter/material.dart';
import 'package:preferences_app/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'Material App',
     initialRoute: HomeScreen.routName,
     routes: {
       HomeScreen.routName: ( _ ) => const HomeScreen(),
       SettingsScreen.routName: ( _ ) => const SettingsScreen()
     },
    );
  }
}