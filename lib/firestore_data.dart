import 'package:cloud_firestore/cloud_firestore.dart';

class data_model {
  var firestore = FirebaseFirestore.instance;
  Future register_quesry({String email, String name, String question}) async {
    var time = DateTime.now().toString();
    await firestore
        .collection("infigon_questions")
        .doc(time)
        .set({"name": name, "email": email, "question": question});
  }

  Future get_queries_id() async {
    List id = [];
    var dos = await firestore.collection("infigon_questions").get();
    for (var docs in dos.docs) {
      id.add(docs.id);
    }
    return id;
  }

  Future get_queries_data() async {
    Map id = {};
    var dos = await firestore.collection("infigon_questions").get();
    for (var docs in dos.docs) {
      id[docs.id] = docs.data();
    }
    return id;
  }
}
