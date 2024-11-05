import 'package:flutter/material.dart';

class PythonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
        appBar: AppBar(
           backgroundColor: Colors.blue,
            centerTitle: true,
          title: Text('Python Course'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Image.asset('assets/python.jpeg'),
               SizedBox(height: 15,),
              Text(
                'Python Programming',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'This course covers the fundamentals of Python, including syntax, data structures, and functions. You will also learn about libraries such as NumPy and Pandas.',
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
