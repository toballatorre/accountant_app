import 'package:accountant_app/components/counter_btn.dart';
import 'package:accountant_app/components/display_counter.dart';
import 'package:accountant_app/views/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: Consumer<CounterProvider>(
        builder: (_, provider, __) {
          final counter = provider.counter;
          return Scaffold(
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Decrement
                  Counterbtn(
                    icon: Icons.remove,
                    onPressed: counter > 0 ? provider.decrement : null,
                  ),
                  const SizedBox(width: 20),
                  DisplayCounter(counter),
                  const SizedBox(width: 20),
                  // Increment
                  Counterbtn(
                    icon: Icons.add,
                    onPressed: counter < 10 ? provider.increment : null,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
