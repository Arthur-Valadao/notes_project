import 'package:notes_project/src/features/add_notes/model/notes_model.dart';

class HomeController {
  List<Note> vetor = [];

  addValue(Note? value) {
    if (value != null) {
      vetor.add(value);
    }
  }
}
