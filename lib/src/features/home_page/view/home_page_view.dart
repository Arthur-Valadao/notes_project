import 'package:flutter/material.dart';
import 'package:notes_project/src/features/add_notes/model/notes_model.dart';
import 'package:notes_project/src/features/add_notes/view/add_notes_view.dart';
import 'package:notes_project/src/features/home_page/controller/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const route = "homePage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = HomeController();

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
            itemCount: controller.vetor.length,
            itemBuilder: (_, index) {
              return Card(
                  color: Colors.amberAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Título: ${controller.vetor[index].title}",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(controller.vetor[index].text),
                    ],
                  ));
            }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.amber,
        onPressed: () {
          callNotesScreen();
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

  callNotesScreen() async {
    final note = await Navigator.of(context).push(MaterialPageRoute<Note>(
      builder: (BuildContext context) => AddNotes(),
      fullscreenDialog: true,
    ));

    setState(() {
      controller.addValue(note);
    });
  }
}
