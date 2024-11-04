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
            child: currentIndex == 0
                ? Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: Colors.red[400],
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
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.red,
                              backgroundColor: Colors.orange),
                          child: Text(buttonName),
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
                  )
                : Image.asset('images/Yanfei.jpg')),
        // Image.network(
        //     'https://firebasestorage.googleapis.com/v0/b/pixel-vault-db6a1.appspot.com/o/photos%2F08ff53a5-0902-4f2d-a2a0-153542576697_Yanfei.jpg?alt=media&token=9eaf2755-fadb-4057-b254-d602d7c04a1b')),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Image')
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
