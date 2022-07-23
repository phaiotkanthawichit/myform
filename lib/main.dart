import 'package:flutter/material.dart';

class AddItemPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddItemPageState();
  }
}

class AddItemPageState extends State<AddItemPage> {
  var ctl_name = TextEditingController();
  var result = ' ----- Result ------';
  createItem() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Item"),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: this.ctl_name,
            decoration: InputDecoration(labelText: "Name"),
          ),
          RaisedButton(
            onPressed: createItem,
            child: Text("Create"),
          ),
        ],
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  showAddItemPage() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return AddItemPage();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ITem'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: showAddItemPage,
      ),
      body: Column(
        children: <Widget>[
          Text('Helow'),
        ],
      ),
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter PHP',
      home: MainPage(),
    );
  }
}

void main() {
  runApp(App());
}
