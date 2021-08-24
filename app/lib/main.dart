import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

double _volume = 0.0;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Ahmad",
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue)),
            Icon(Icons.camera_enhance),
            TextButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "Press Text button",
                    toastLength: Toast.LENGTH_LONG,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 20,
                  );
                },
                child: new Text("Text Button",
                    style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue))),
            OutlinedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "Press Outline Button",
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.red,
                    fontSize: 20,
                  );
                },
                child: new Text("Outlined Button",
                    style: TextStyle(color: Colors.blue, fontSize: 20.0))),
            IconButton(
              icon: const Icon(Icons.volume_up),
              // tooltip: 'Please Press',
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "Press Icon Button and change the volume",
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.red,
                  fontSize: 20,
                );
                setState(
                  () {
                    _volume += 10;
                  },
                );
              },
              tooltip: 'Please Press',
            ),
            Text('Volume : $_volume',
                style: TextStyle(color: Colors.blue, fontSize: 20.0)),
            FloatingActionButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "Press Floting Button",
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.red,
                  fontSize: 20,
                );
              },
              tooltip: 'Please Press',
              child: const Icon(Icons.navigation),
              backgroundColor: Colors.green,
            ),
            FloatingActionButton.extended(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "Press Floting Button Approve",
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.red,
                  fontSize: 20,
                );
              },
              label: const Text('Approve'),
              icon: const Icon(Icons.thumb_up),
              backgroundColor: Colors.pink,
              tooltip: 'Please Press',
            ),
            ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "Evaluated Button",
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.red,
                    fontSize: 20,
                  );
                },
                child: new Text("Evaluated Button"))
          ],
        ),
      ),
    );
  }
}
