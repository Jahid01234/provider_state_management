import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Provider/counter_provider.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider State Management",style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Counter Value is: ${context.watch<CounterProvider>().count}",style: TextStyle(
            color: Colors.deepOrangeAccent,
            fontSize: 20
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:
            [
              FloatingActionButton
                (
                onPressed: (){
                  context.read<CounterProvider>().increment_count();
                },
                child: Icon(Icons.add),
               ),


              FloatingActionButton
                (
                onPressed: (){
                  context.read<CounterProvider>().decrement_count();
                },
                child: Icon(Icons.remove),
              ),
            ]
          )
        ],
      ),
    );
  }
}
