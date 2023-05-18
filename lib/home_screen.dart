import 'package:flutter/material.dart';
import 'package:provider_app/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

      final counterProvider = Provider.of<CounterProvider>(context);
    // final count = counter.count;

    return Scaffold(appBar: AppBar(
      title: const Text('counter app'),
      
    ),
    body: Center(
      child: Consumer<CounterProvider>(builder: (ctx, provider, child) {
              return Text('you have pressed button ${provider.count} times');
      },
      ),
    ) ,
        
    floatingActionButton: FloatingActionButton(onPressed: () {
      Provider.of<CounterProvider>(context).increment();
      //counterProvider.increment();
    },
    child: const Icon(Icons.plus_one),
    ),
    
    );
  }
}

