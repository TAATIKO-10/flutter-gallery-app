import 'package:flutter/material.dart';
// import 'package:test_app/screen2.dart';
import 'screen2.dart';


void main() {
  runApp(MaterialApp(
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  Color containerColor = Colors.red;
  var defaultImage = "images/tom.png";
  var images = [
    "images/logo.png",
    "images/call.png",
    "images/jerry.png",
    "images/donald.png",
    "images/bugs.png",
    "images/tom.png"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Image Viewer Application"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 74, 67, 67), width: 1),
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                color: containerColor,
              ),
              child: Image.asset(defaultImage),
            ),
            const SizedBox(height: 20),
            const Text(
              "Image Buttons",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (var i = 0; i < 3; i++)
                  SizedBox(
                    width: 100, // Set the desired width
                    height: 100, // Set the desired height
                    child: FloatingActionButton.extended(
                      elevation: 12,
                      onPressed: () {
                        setState(() {
                          defaultImage = images[i];
                        });
                      },
                      heroTag: 'fab$i', // Add a unique hero tag here
                      label: Image(
                        image: AssetImage(images[i]),
                        width: 170,
                        height: 80,
                      ),
                    ),
                  )
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                for (var i = 3; i < 6; i++)
                  SizedBox(
                    width: 100, // Set the desired width
                    height: 100, // Set the desired height
                    child: FloatingActionButton.extended(
                      elevation: 12,
                      onPressed: () {
                        setState(() {
                          defaultImage = images[i];
                        });
                      },
                      heroTag: 'fab$i', // Add a unique hero tag here as well
                      label: Image(
                        image: AssetImage(images[i]),
                        width: 170,
                        height: 80,
                      ),
                    ),
                  )
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                onPressed: () {
                  setState(() {
                    containerColor = containerColor == Colors.red
                        ? Colors.black
                        : Colors.red;
                  });
                },
                child: const Text("Change Container Color",
                    style: TextStyle(fontSize: 25)),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Screen2()));
                },
                child: const Text(
                  "Display on Screen 2",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}

