import 'package:flutter/material.dart';

class NodeJSscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
           backgroundColor: Colors.blue,
            centerTitle: true,
          title: Text('Node.js Course'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/nodejs.png'),
              SizedBox(height: 15,),
              Text(
                'Node.js Development',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'In this course, you will learn how to build server-side applications using Node.js. Topics include setting up a Node.js environment, working with Express.js, and creating RESTful APIs.',
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
