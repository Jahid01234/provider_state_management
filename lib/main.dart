import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'HomePage.dart';
import 'Provider/counter_provider.dart';


void main() {

  runApp(MultiProvider
    (
      providers:
      [
         ChangeNotifierProvider(create: (_)=>CounterProvider())
      ],
         child: MyApp(),
    )
       );

}




class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

