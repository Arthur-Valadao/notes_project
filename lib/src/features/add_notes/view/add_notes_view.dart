import 'package:flutter/material.dart';
import 'package:notes_project/src/features/add_notes/model/notes_model.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({Key? key}) : super(key: key);

  static const route = "addNotes";

  @override
  _AddNotesState createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  Note nota = Note();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(child: Text("Adicionar Nota")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Title:',
              ),
              onChanged: (value) => {
                nota.title = value,
              },
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Text',
                    ),
                    onChanged: (value) {
                      nota.text = value;
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(nota);
                  },
                  child: Text("Salvar"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
