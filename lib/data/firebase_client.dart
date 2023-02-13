import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:devstack/data/data_model.dart';
import 'package:devstack/data/exeptions.dart';

typedef RequestBody = Map<String, dynamic>;

class FirebaseClient {
  //static const kCollectionName = 'test_collection';
  static const kCollectionName = 'data_collection';

  final _firestoreInstance = FirebaseFirestore.instance;

  CollectionReference _fetchReference(String collection) {
    return _firestoreInstance.collection(collection);
  }

  Future<List<DataModel>> fetchData() async {
    List<DataModel> listData = [];
    await _delay();
    try {
      QuerySnapshot snapshotCollection =
          await _fetchReference(kCollectionName).get();
      listData = snapshotCollection.docs
          .map<DataModel>(
            (doc) => DataModel.fromJson(doc.data() as RequestBody),
          )
          .toList();
    } catch (e) {
      throw FirebaseServiceException(e.toString());
    }
    return listData;
  }

  Future<void> changeData(DataModel dataModel) async {
    await _delay();
    try {
      CollectionReference ref = _fetchReference(kCollectionName);
      await ref.doc(dataModel.id).update(dataModel.toJson());
    } catch (e) {
      throw FirebaseServiceException(e.toString());
    }
  }
}

Future<void> _delay() async {
  await Future.delayed(Duration(seconds: Random().nextInt(6)));
}
