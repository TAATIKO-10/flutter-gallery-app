import 'package:flutter/material.dart';
// import 'index.dart';
import 'java.dart';
import 'python.dart';
import 'nodejs.dart';
import 'react.dart';
import 'flutter.dart';
import 'javascript.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text(' Courses'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // First Row with two cards
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FlutterScreen()),
                      );
                    },
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 150,
                        child: Column(
                          children: [
                            Image.asset('assets/flutter.png',
                                width: 80, height: 80),
                            SizedBox(height: 10),
                            Text('Flutter',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            Text('\$45',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey[700])),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => JavaScriptScreen()),
                      );
                    },
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 150,
                        child: Column(
                          children: [
                            Image.asset('assets/javascript.png',
                                width: 80, height: 80),
                            SizedBox(height: 10),
                            Text('JavaScript',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            Text('\$45',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey[700])),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Second Row with two cards
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NodeJSscreen()),
                      );
                    },
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 150,
                        child: Column(
                          children: [
                            Image.asset('assets/nodejs.png',
                                width: 80, height: 80),
                            SizedBox(height: 10),
                            Text('Node.js',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            Text('\$45',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey[700])),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PythonScreen()),
                      );
                    },
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 150,
                        child: Column(
                          children: [
                            Image.asset('assets/python.jpeg',
                                width: 80, height: 80),
                            SizedBox(height: 10),
                            Text('Python',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            Text('\$45',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey[700])),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Third Row with two cards
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ReactScreen()),
                      );
                    },
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 150,
                        child: Column(
                          children: [
                            Image.asset('assets/react.png',
                                width: 80, height: 80),
                            SizedBox(height: 10),
                            Text('React',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            Text('\$45',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey[700])),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                JavaScreen()), // Adjust to the correct screen
                      );
                    },
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: 150,
                        child: Column(
                          children: [
                            Image.asset('assets/java.png',
                                width: 80, height: 80),
                            SizedBox(height: 10),
                            Text('Java',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            SizedBox(height: 5),
                            Text('\$45',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey[700])),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
