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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(flex: 5, child: Image.asset('assets/Akramah pic 1 feb 2023.png')),
          Expanded(child: Text('Hey Ninjas!', style: TextStyle(backgroundColor: Colors.cyan),)),
          Expanded(flex: 1, child: ElevatedButton(onPressed: (){}, child: Icon(Icons.add))),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              child: Text('AGAIN'),
              padding: EdgeInsets.all(20.0),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.purple[200],
        child: const Text('++'),
      ),
    );
  }
}
