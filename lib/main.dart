import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.amber,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
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

int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add_shopping_cart),
        hoverColor: Colors.blue,
        elevation: 20,
      ),
      bottomNavigationBar: BottomNavigationBar( type: BottomNavigationBarType.shifting,
        currentIndex: _index,
        elevation: 20,
        onTap: (x) {
          setState(() {
            _index = x;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), backgroundColor: Colors.deepPurple, title: Text('Home')),
          BottomNavigationBarItem( backgroundColor: Colors.red,icon: Icon(Icons.work), title: Text('Work')),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
              icon: Icon(Icons.shopping_cart), title: Text('Cart')),
          BottomNavigationBarItem( backgroundColor: Colors.black,
              icon: Icon(Icons.history), title: Text('History')),
        ],
        backgroundColor: Colors.deepPurple,
      ),
      appBar: AppBar(
        actionsIconTheme: IconThemeData(size: 30),
        elevation: 0,
        actions: <Widget>[
          InkWell(
            child: Icon(Icons.location_on),
            hoverColor: Colors.amber,
          )
        ],
        title: Text('Duckhawk'),
      ),
      drawer: new Drawer(
          child: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            selected: true,
          ),
          ListTile(
            title: Text('Hello 2'),
          ),
          ListTile(
            title: Text('Hello 3'),
          ),
          ListTile(
            title: Text('Hello 4'),
          ),
        ],
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hello Bg This is your first App in flutter Web'),
          ],
        ),
      ),
    );
  }
}
