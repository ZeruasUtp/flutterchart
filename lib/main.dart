import 'package:datosxd/linear_charts.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   title: 'Material app',
   home: Scaffold(
    appBar: AppBar(
   title: const Text('Material'),


    ),

    body: const LinearCharts()


   ),



    );
  }
}
