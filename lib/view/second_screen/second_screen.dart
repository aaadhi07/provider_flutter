import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_flutter/controler/counter_screen_controler.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(onPressed: () {
           context.read<CounterScreencontroler>().onDecrement();
        }, child: Text("Add")),
      ),
    );
  }
}