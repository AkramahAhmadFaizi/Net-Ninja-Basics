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
        child: Image(image: NetworkImage('https://i.pinimg.com/originals/b9/75/29/b97529d497387509165c215bf8fb9222.jpg'),
          fit: BoxFit.cover,)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.purple[200],
        child: const Text('++'),
      ),
    );
  }
}
