import 'package:flutter/material.dart';
import 'package:notes_project/src/features/home_page/view/home_page_view.dart';

class AddNotes extends StatelessWidget {
  const AddNotes({Key? key}) : super(key: key);

  static const route = "addNotes";

  @override
  Widget build(BuildContext context) {
    String entrada = '';
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
                      entrada = value;
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
                    Navigator.of(context).pop(entrada);
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
