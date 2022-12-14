import 'package:flutter/material.dart';
import 'package:gpa/Data/dataHelper.dart';
import 'package:gpa/Screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DataHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const GBAHome(),
    );
  }
}
