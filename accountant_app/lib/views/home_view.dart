import 'package:accountant_app/components/counterbtn.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Counterbtn(
              icon: Icons.remove,
              onPressed: _counter > 0 ? () => _updateCounter(-1) : null,
            ),
            const SizedBox(width: 20),
            Card.outlined(
              child: SizedBox(
                width: 200,
                height: 200,
                child: Center(
                  child: Text(
                    _counter.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontSize: 100),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Counterbtn(
              icon: Icons.add,
              onPressed: _counter < 10 ? () => _updateCounter(1) : null,
            ),
          ],
        ),
      ),
    );
  }

  void _updateCounter(int step) {
    _counter += step;
    setState(() {});
  }
}
