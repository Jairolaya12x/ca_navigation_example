import 'package:clean_arch_navigation_example/src/data/datasource/auth_data_source.dart';
import 'package:clean_arch_navigation_example/src/data/datasource/iauth_data_source.dart';
import 'package:clean_arch_navigation_example/src/data/repositories/auth_repository.dart';
import 'package:clean_arch_navigation_example/src/domain/repositories/iauth_repository.dart';
import 'package:clean_arch_navigation_example/src/domain/usecases/auth_login.dart';
import 'package:clean_arch_navigation_example/src/presentation/features/login/login_provider.dart';
import 'package:get_it/get_it.dart';

final _ij = GetIt.instance;

setup() {

  //! Login injection
  _ij.registerLazySingleton<IAuthDataSource>(() => AuthDataSource());
  _ij.registerLazySingleton<IAuthRepository>(() => AuthRepository(_ij<IAuthDataSource>()));
  _ij.registerLazySingleton<AuthLogin>(() => AuthLogin(_ij<IAuthRepository>()));

  _ij.registerLazySingleton(() => LoginProvider(_ij<AuthLogin>()));

}