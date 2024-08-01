import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Emotions extends StatelessWidget {
  final String emojieface;
  final String feel;

  const Emotions({
    super.key,
    required this.emojieface,
    required this.feel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue.shade300),
          padding: EdgeInsets.all(16),
          child: Center(
              child: Container(
            child: Text(
              emojieface,
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
          ))),
      SizedBox(
        height: 10,
      ),
      Text(
        feel,
        style: TextStyle(fontSize: 15, color: Colors.white),
      ),
    ]);
  }
}
