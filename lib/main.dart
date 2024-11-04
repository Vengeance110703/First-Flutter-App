// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Click';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("New Appbar"),
        ),
        body: Center(
            child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => {
                  setState(() {
                    buttonName = 'Clicked';
                  })
                },
                child: Text(buttonName),
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.red,
                    backgroundColor: Colors.orange),
              ),
              ElevatedButton(
                  onPressed: () => {
                        setState(() {
                          buttonName = 'Clicked';
                        })
                      },
                  child: Text(buttonName))
            ],
          ),
        )),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings')
          ],
          currentIndex: currentIndex,
          onTap: (index) => {
            setState(() {
              currentIndex = index;
            })
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
