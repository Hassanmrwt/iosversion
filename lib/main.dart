import 'package:babylonjs_viewer/babylonjs_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My 3D',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BabylonJSViewer(
          src: 'assets/Plant1.glb',
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              heroTag: 'o1',
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home2()));
              },
              child: Icon(Icons.skip_next)),
        ],
      ),
    );
  }
}

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BabylonJSViewer(
          src: 'assets/Plant2.glb',
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              heroTag: 'tt1',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
              child: Icon(
                Icons.skip_previous,
              )),
          FloatingActionButton(
              heroTag: 'tt2',
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home3()));
              },
              child: Icon(Icons.skip_next)),
        ],
      ),
    );
  }
}

class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BabylonJSViewer(
          src: 'assets/Plant3.glb',
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              heroTag: 't1',
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home2()));
              },
              child: Icon(
                Icons.skip_previous,
              )),
          FloatingActionButton(
              heroTag: 't2',
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home4()));
              },
              child: Icon(
                Icons.skip_next,
              )),
        ],
      ),
    );
  }
}

class Home4 extends StatefulWidget {
  const Home4({Key? key}) : super(key: key);

  @override
  State<Home4> createState() => _Home4State();
}

class _Home4State extends State<Home4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BabylonJSViewer(
          src: 'assets/Plant4.glb',
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              heroTag: 'f1',
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home3()));
              },
              child: Icon(
                Icons.skip_previous,
              )),
          FloatingActionButton(
              heroTag: 'f2',
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home5()));
              },
              child: Icon(
                Icons.skip_next,
              )),
        ],
      ),
    );
  }
}

class Home5 extends StatefulWidget {
  const Home5({Key? key}) : super(key: key);

  @override
  State<Home5> createState() => _Home5State();
}

class _Home5State extends State<Home5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BabylonJSViewer(
          src: 'assets/Plant5.glb',
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home4()));
              },
              child: Icon(
                Icons.skip_previous,
              )),
        ],
      ),
    );
  }
}
