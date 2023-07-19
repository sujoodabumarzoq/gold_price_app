import 'package:flutter/material.dart';
import 'package:gold_price_app/main_screen.dart';
import 'package:gold_price_app/network/dio_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

      )
      ,
      darkTheme: ThemeData.dark(

      ),
      home: const MainScreen(),
    );
  }
}
