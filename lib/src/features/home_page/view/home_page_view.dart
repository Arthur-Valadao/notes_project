import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const route = "homePage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text("Notas"),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 40, top: 15, right: 40, bottom: 10),
        child: Card(
            color: Colors.amberAccent,
            child: Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Notas exemplo"),
              ),
            )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.green,
        child: Container(
          height: 50,
        ),
      ),
    );
  }
}
