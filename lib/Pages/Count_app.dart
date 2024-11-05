import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CountApp extends StatefulWidget {
  const CountApp({super.key});

  @override
  State<CountApp> createState() => _CountAppState();
}

class _CountAppState extends State<CountApp> {
  int counter = 1; 
  int step = 1; // Used to control the direction

  
  void updateCounter() {
    setState(() {
      counter += step;

      // Reverse direction if counter reaches boundaries
      if (counter == 20 || counter == 1) {
        step = -step;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Simple Counter App',
          style: GoogleFonts.jost(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter', 
              style: GoogleFonts.jost(fontSize: 40),
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: updateCounter, 
              child: const Text('Increase/Decrease'),
            ),
          ],
        ),
      ),
    );
  }
}
