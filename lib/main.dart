import 'package:flutter/material.dart';
import 'package:uis13/photo2/ui3.dart';
import 'package:uis13/photo2/ui3_data.dart';
import 'package:uis13/photo2/ui4.dart';
import 'package:uis13/photo2/ui5.dart';
import 'package:uis13/photo3/ui6.dart';
import 'package:uis13/photo3/ui7.dart';
import 'package:uis13/photo3/ui8.dart';
import 'package:uis13/photo4/ui9.dart';
import 'package:uis13/ui13/ui13.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
      home: Ui9(),
    );
  }
}


