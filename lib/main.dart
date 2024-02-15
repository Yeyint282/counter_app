// image
// asset image // file image // binary image(unit8List)
// network image

import 'package:flutter/material.dart';

//stateful
//stateless

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 22,
        ),
        actions: const [
          Icon(
            Icons.search,
            size: 22,
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.settings,
              size: 22,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
        centerTitle: true,
        title: const Text(
          'Image Lesson',
          style: TextStyle(
              color: Colors.black,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              fontSize: 22),
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Row(
            children: [
              Image.asset('assets/shank.jpg',
                  fit: BoxFit.cover, width: 200, height: 200),
              Image.asset(
                'assets/zoro.jpg',
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
              Image.asset(
                'assets/op.jpeg',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/th.jpg',
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
    );
  }
}
