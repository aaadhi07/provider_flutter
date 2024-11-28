import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_flutter/controler/counter_screen_controler.dart';
import 'package:sample_flutter/view/second_screen/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final counterScreenState = context.watch<CounterScreencontroler>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.read<CounterScreencontroler>().onincrement();
 },),
      body: Center(
        child:Consumer<CounterScreencontroler>(
          builder: (context, counterScreenState, child) =>
      InkWell(
        onTap: () {
          Navigator.push(
            context, MaterialPageRoute(
              builder: (context) => SecondScreen(),));
        },
        child: Text(counterScreenState.count.toString(),
        style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
        ),
      ) ,) 
      
      ),
    );
  }
}