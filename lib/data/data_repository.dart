import 'package:devstack/data/data_model.dart';
import 'package:devstack/data/firebase_client.dart';
import 'package:devstack/data/local_db_client.dart';
import 'package:devstack/entities/switcher_entity.dart';

class DataRepositoryDb {
  final LocalDbClient _client;

  const DataRepositoryDb(this._client);

  Future<List<SwitcherEntity>> fetchData() async {
    var result = await _client.selectAll();
    return result
        .map<SwitcherEntity>((value) => SwitcherEntity.fromDataModelDb(value))
        .toList();
  }

  Future<void> putData(List<DataModel> dataList) async {
    await Future.forEach(dataList, (element) async {
      var selected = await _client.select(element);
      if (selected.isEmpty) {
        await _client.insertData(
          dataModelDb: DataModelDb.fromDataModel(element),
        );
      } else {
        await _client.updateData(data: DataModelDb.fromDataModel(element));
      }
    });
  }
}

class DataRepositoryFb {
  final FirebaseClient _client;

  const DataRepositoryFb(this._client);

  Future<List<DataModel>> fetchData() async {
    return await _client.fetchData();
  }

  Future<void> changeData(SwitcherEntity switcherEntity) async {
    await _client.changeData(DataModel.fromEntity(switcherEntity));
  }
}
