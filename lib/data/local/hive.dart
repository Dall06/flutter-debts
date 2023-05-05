import 'package:hive/hive.dart';

abstract class LocalDBRepository {
  Future<BoxCollection> initCollection();
  Future<void> close(BoxCollection collection);
}

class LocalDB implements LocalDBRepository {
  LocalDB({
    required this.dbName,
    required this.boxNames,
  });

  late final String dbName;
  late final Set<String> boxNames;

  @override
  Future<BoxCollection> initCollection() async {
    final collection = await BoxCollection.open(
      dbName, // Name of your database
      boxNames, // Names of your boxes
      path: './', // Path where to store your boxes (Only used in Flutter / Dart IO)
    );

    return collection;
  }

  @override
  Future<void> close(BoxCollection collection) async {
    collection.close();
  }
}
