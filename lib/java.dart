import 'package:flutter/material.dart';

class JavaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
           backgroundColor: Colors.blue,
            centerTitle: true,
          title: Text('Java Course'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/java.png'),
              SizedBox(height: 15,),
              Text(
                'Java Programming',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'In this course, you will learn the basics of Java programming language, including object-oriented programming principles, data types, control structures, and more.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              // Add more course content or lessons here
            ],
          ),
        ),
      ),
    );
  }
}
