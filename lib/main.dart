import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_flutter/controler/counter_screen_controler.dart';
import 'package:sample_flutter/view/home_screen/home_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterScreencontroler(),
      child: MaterialApp(
        home:HomeScreen(),
      ));
  }
}