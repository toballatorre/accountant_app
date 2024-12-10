import 'package:flutter/material.dart';

class DisplayCounter extends StatelessWidget {
  const DisplayCounter(this.counter, {super.key});
  final int counter;
  static const _colors = <int>[
    0xFF8FE000,
    0xFFC5CD00,
    0xFFF0DB01,
    0xFFFFCF00,
    0xFFFFB700,
    0xFFFF9B01,
    0xFFFF7300,
    0xFFFF4D00,
    0xFFFF2600,
    0xFFFF0000,
  ];

  @override
  Widget build(BuildContext context) {
    final indexColor = counter < _colors.length ? counter : _colors.length - 1;
    final colorSelected = Color(_colors[indexColor]);
    return Card.outlined(
      shape: RoundedRectangleBorder(
          side: BorderSide(color: colorSelected),
          borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        width: 200,
        height: 200,
        child: Center(
          child: Text(
            '$counter',
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: 100,
                  color: colorSelected,
                ),
          ),
        ),
      ),
    );
  }
}
