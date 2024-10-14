import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: const Text('CA129'),
            centerTitle: true,
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  
                  Container(
                    height: 100,
                    width: 400,
                    margin: const EdgeInsets.only(bottom: 15,top: 5),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/logo.png',
                          width: 60,
                          height: 60,
                        ),
                        const SizedBox(width: 15), 
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              ' Ahmed Abdirahim ',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              'Graphic Designer',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20), 

                  // Card 1
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(Icons.home, size: 40, color: Colors.blue),
                              Icon(Icons.phone, size: 40, color: Colors.green),
                              Icon(Icons.email, size: 40, color: Colors.red),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text('Home'),
                              Text('Phone'),
                              Text('Email'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20), // Spacing before the next section

                  // Multiple Cards
                  Column(
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: const [
                              Icon(Icons.home, size: 40),
                              SizedBox(width: 10),
                              Text('Home'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: const [
                              Icon(Icons.phone, size: 40),
                              SizedBox(width: 10),
                              Text('Phone'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: const [
                              Icon(Icons.call, size: 40),
                              SizedBox(width: 10),
                              Text('Call'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: const [
                              Icon(Icons.car_crash, size: 40),
                              SizedBox(width: 10),
                              Text('Car Crash'),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: const [
                              Icon(Icons.logout, size: 40),
                              SizedBox(width: 10),
                              Text('Logout'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
