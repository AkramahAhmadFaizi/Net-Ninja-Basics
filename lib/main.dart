import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restarted'),
        centerTitle: true,
        backgroundColor: Colors.purple[200],
      ),
      body: const Center(
        child: Text(
          'ALHUMDULILLAH!',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.pinkAccent,
            fontFamily: 'Simple',
          ),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.purple[200],
        child: const Text('++'),
      ),
    );
  }
}
