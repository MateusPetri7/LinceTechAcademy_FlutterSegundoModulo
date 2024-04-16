import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quadrados Empilhados'),
          backgroundColor: Colors.yellow,
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Pilha(
                    backgroundColor: Colors.grey,
                    children: [
                      Colors.red,
                      Colors.green,
                      Colors.blue,
                    ],
                  ),
                  Pilha(
                    backgroundColor: Colors.black,
                    children: [
                      Colors.cyan,
                      Colors.purple,
                      Colors.yellow,
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Pilha(
                    children: [
                      Colors.red,
                      Colors.yellow,
                      Colors.blue,
                    ],
                  ),
                  Pilha(
                    backgroundColor: Colors.white,
                    children: [
                      Colors.deepPurple,
                      Colors.deepOrange,
                      Colors.yellow,
                      Colors.lime,
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Pilha extends StatelessWidget {
  const Pilha({
    this.backgroundColor,
    required this.children,
  });

  final Color? backgroundColor;
  final List<Color> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      color: backgroundColor,
      width: 100,
      height: 100,
      child: Stack(
        children: [
          for (var index = 0; index < children.length; index++)
            Positioned(
              top: index * 8 + 8,
              left: index * 8 + 8,
              child: Container(
                width: 50,
                height: 50,
                color: children[index],
              ),
            ),
        ],
      ),
    );
  }
}
