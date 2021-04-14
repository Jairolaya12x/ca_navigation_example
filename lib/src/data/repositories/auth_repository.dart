import 'package:clean_arch_navigation_example/src/data/datasource/iauth_data_source.dart';
import 'package:clean_arch_navigation_example/src/domain/repositories/iauth_repository.dart';

class AuthRepository implements IAuthRepository {

  final IAuthDataSource authDataSource;

  AuthRepository(this.authDataSource) : assert(authDataSource != null);

  @override
  Future<bool> login(String username, String password) async {
    return await authDataSource.login(username, password);
  }

}