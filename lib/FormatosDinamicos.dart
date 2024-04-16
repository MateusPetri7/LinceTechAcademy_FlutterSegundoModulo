import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool ehCirculo = true;
  Color color = Colors.blue;

  void alterarForma() {
    setState(() {
      ehCirculo = !ehCirculo;
    });
  }

  void mudarCor() {
    setState(() {
      color = _generateRandomColor();
    });
  }

  Color _generateRandomColor() {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Formatos dinâmicos'),
          backgroundColor: Colors.yellow,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: color,
                  shape: ehCirculo ? BoxShape.circle : BoxShape.rectangle,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    alterarForma();
                  });
                },
                child: Text(ehCirculo
                    ? 'Alterar para quadrado'
                    : 'Alterar para círculo'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    mudarCor();
                  });
                },
                child: Text('Cor aleatória'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
