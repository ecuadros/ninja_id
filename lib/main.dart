import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
  home: NinjaCard(),
));

Color? headerColor = Colors.grey[850];
Color? bodyColor   = Colors.grey[900];

class NinjaCard extends StatelessWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      appBar: AppBar(
        title: const Text('My titlex'),
        centerTitle: true,
        backgroundColor: headerColor,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/image0.png'),
                radius: 40,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
            ),
            Text('NAME',
              style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text('Ernesto Cuadros',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            Text('Ninja Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height: 10.0),
            Text('8',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(Icons.email,
                      color: Colors.grey[400]),
                SizedBox(width: 30.0),
                Text('ecuadros@spc.org.pe',
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      fontSize: 28.0,
                    ),
                )
              ],
            )
          ]
        )

      )
    );
  }
}