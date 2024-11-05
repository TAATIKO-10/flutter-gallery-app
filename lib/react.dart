import 'package:flutter/material.dart';


class ReactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
           backgroundColor: Colors.blue,
            centerTitle: true,
          title: Text('React Course'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Image.asset('assets/react.png'),
               SizedBox(height: 15,),
              Text(
                'React Development',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'This course focuses on building user interfaces with React. You will learn about components, state management, hooks, and routing in React applications.',
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
