import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExercisesTile extends StatelessWidget {
  final icon;
  final String exerciseName;
  final String exercisesNumber;
  final Color;

  const ExercisesTile(
      {super.key,
      this.icon,
      required this.exerciseName,
      required this.exercisesNumber,
      this.Color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            trailing:
                IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
            title: Text(
              exerciseName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(exercisesNumber),
            leading: Container(
              decoration: BoxDecoration(
                  color: Color, borderRadius: BorderRadius.circular(10)),
              child: IconButton(
                icon: Icon(
                  icon,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          )),
    );
  }
}
