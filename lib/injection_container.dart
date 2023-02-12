import 'package:get_it/get_it.dart';

import 'package:devstack/bloc/switcher_bloc.dart';
import 'package:devstack/data/data_repository.dart';
import 'package:devstack/data/firebase_client.dart';
import 'package:devstack/data/local_db_client.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<LocalDbClient>(() => LocalDbClient());

  sl.registerLazySingleton<FirebaseClient>(() => FirebaseClient());

  sl.registerLazySingleton<DataRepositoryDb>(() => DataRepositoryDb(sl()));

  sl.registerLazySingleton<DataRepositoryFb>(() => DataRepositoryFb(sl()));

  sl.registerLazySingleton<SwitcherBloc>(() => SwitcherBloc(
        dataRepositoryDb: sl(),
        dataRepositoryFb: sl(),
      ));
}
