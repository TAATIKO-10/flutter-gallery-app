import 'package:flutter/material.dart';

class FlutterScreen extends StatefulWidget {
  @override
  State<FlutterScreen> createState() => _FlutterScreenState();
}

class _FlutterScreenState extends State<FlutterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text('Flutter Course'),
          
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Image.asset('assets/flutter.png'),
               SizedBox(height: 15,),
              Text(
                'Flutter Development',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'In this course, you will learn how to build beautiful and fast applications for mobile and web using Flutter. You will cover the fundamentals of Flutter, including widgets, state management, and API integration.',
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
