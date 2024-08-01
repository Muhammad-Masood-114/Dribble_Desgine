import 'package:dribbble_design/widget/Emotions.dart';
import 'package:dribbble_design/widget/Exercises_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade500,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Message"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile ")
          ],
        ),
        body: SafeArea(
            child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi Clone ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "2-Jun-24 ",
                            style: TextStyle(
                                color: Colors.blue.shade100, fontSize: 15),
                          )
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue.shade400,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications),
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue.shade400,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Emotions(
                        emojieface: '😀',
                        feel: 'Happy',
                      ),
                      Emotions(emojieface: '🙂', feel: 'Good'),
                      Emotions(emojieface: "🙁", feel: "Sad"),
                      Emotions(emojieface: "😡", feel: "Angry")
                    ])
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Exercises',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
                  ],
                ),
                Expanded(
                    child: ListView(
                  children: [
                    ExercisesTile(
                      icon: Icons.favorite,
                      exerciseName: 'Speaking Skill',
                      exercisesNumber: 'Exercises 15',
                      Color: Colors.orange,
                    ),
                    ExercisesTile(
                      icon: Icons.contact_page,
                      exerciseName: 'Reading Skill',
                      exercisesNumber: "Exercsises 10",
                      Color: Colors.green,
                    ),
                    ExercisesTile(
                        icon: Icons.star,
                        exerciseName: 'Writing Skill',
                        exercisesNumber: "Exercsises 5",
                        Color: Colors.pink),
                  ],
                ))
              ],
            ),
          ))
        ])));
  }
}
