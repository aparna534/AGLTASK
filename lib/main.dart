import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AGL Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _showImage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AGL Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Your Name'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _showImage = true;
                });
              },
              child: Text('Show Image'),
            ),
            SizedBox(height: 20),
            _showImage
                ? Image.asset(
                    'assets/img.png',
                    height: 200,
                    errorBuilder: (context, error, stackTrace) {
                      return Text('Image not found', style: TextStyle(color: Colors.red));
                    },
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

