import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int level=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('ID CARD'),
        centerTitle: true,
        backgroundColor: Colors.grey[600],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            level++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[600],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: CircleAvatar(backgroundImage: AssetImage("assets/Akramah pic 1 feb 2023.png"), radius: 50.0,)),
            Divider(height: 30.0,),
            Text('NAME:',
            style: TextStyle(color: Colors.cyan[700], letterSpacing: 2.0),),
            Text('Akramah Faizi',
            style: TextStyle(color: Colors.pinkAccent, fontSize: 18.0),),
            SizedBox(height: 20.0),
            Text('LEVEL:',
              style: TextStyle(color: Colors.cyan[700], letterSpacing: 2.0),),
            Text('$level',
              style: TextStyle(color: Colors.pinkAccent, fontSize: 18.0),),
            SizedBox(height: 20.0,),
            Row(
              children: [
                Icon(Icons.email),
                SizedBox(width: 5.0,),
                Text('akramahfaizi@gmail.com')
              ],
            ),
          ],
        ),
      )
    );
  }
}
