import 'package:get_it/get_it.dart';
import 'package:appfinalproject/core/bloc/dunia/bloc.dart';
import 'package:appfinalproject/core/bloc/indonesia/bloc.dart';
import 'package:appfinalproject/core/bloc/provinsi/bloc.dart';
import 'package:appfinalproject/core/repository/repo_api.dart';

final sl = GetIt.instance;

void init() {
  // Repository
  sl.registerLazySingleton<RepoApi>(() => RepoApi());

  // BLoC
  sl.registerFactory(() => IndonesiaBloc(sl()));
  sl.registerFactory(() => ProvinsiBloc(sl()));
  sl.registerFactory(() => DuniaBloc(sl()));

}