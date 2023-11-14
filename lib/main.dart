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
          Text('Hey Ninjas!', style: TextStyle(backgroundColor: Colors.cyan),),
          ElevatedButton(onPressed: (){}, child: Icon(Icons.add)),
          Container(
            color: Colors.blue,
            child: Text('AGAIN'),
            padding: EdgeInsets.all(20.0),
          ),
          Column(
            children: [
              Text('Check the length', style: TextStyle(backgroundColor: Colors.cyan),),
              IconButton(onPressed: (){}, icon: Icon(Icons.add)),
              ElevatedButton(onPressed: (){}, child: Icon(Icons.alternate_email)),
              Container(
                color: Colors.blue,
                child: Text('Column'),
                padding: EdgeInsets.all(20.0),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          )
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
