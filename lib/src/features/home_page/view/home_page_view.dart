import 'package:flutter/material.dart';
import 'package:notes_project/src/features/add_notes/view/add_notes_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const route = "homePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> vetor = [];
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
        child: ListView.builder(
            itemCount: vetor.length,
            itemBuilder: (_, index) {
              return Card(
                  color: Colors.amberAccent,
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(vetor[index]),
                    ),
                  ));
            }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
        onPressed: () async {
          final word =
              await Navigator.of(context).push(MaterialPageRoute<String>(
            builder: (BuildContext context) => AddNotes(),
            fullscreenDialog: true,
          ));

          if (word != null) {
            setState(() {
              vetor.add(word);
            });
          }
        },
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
