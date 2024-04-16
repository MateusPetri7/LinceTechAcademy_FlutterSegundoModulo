import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Retângulos Coloridos'),
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
                  _buildSquare(Colors.red),
                  SizedBox(width: 8.0),
                  _buildSquare(Colors.green),
                  SizedBox(width: 8.0),
                  _buildSquare(Colors.blue),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildSquare(Colors.purple),
                  SizedBox(width: 8.0),
                  _buildSquare(Colors.cyan),
                  SizedBox(width: 8.0),
                  _buildSquare(Colors.black),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildRectangle(Colors.purple),
                  SizedBox(width: 8.0),
                  _buildRectangle(Colors.cyan),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSquare(Color color) {
    return Container(
      width: 50,
      height: 50,
      color: color,
    );
  }

  Widget _buildRectangle(Color color) {
    return Container(
      width: 50,
      height: 100,
      color: color,
    );
  }
}
