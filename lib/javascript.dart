import 'package:flutter/material.dart';

class JavaScriptScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
           backgroundColor: Colors.blue,
            centerTitle: true,
          title: Text('JavaScript Course'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/javascript.png'),
              SizedBox(height: 15,),
              Text(
                'JavaScript Programming',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'In this course, you will learn the essentials of JavaScript, including syntax, control structures, and functions. The course also covers DOM manipulation and working with APIs.',
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
