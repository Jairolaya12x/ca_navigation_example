import 'package:clean_arch_navigation_example/src/domain/repositories/iauth_repository.dart';

class AuthLogin {
  final IAuthRepository authRepository;

  AuthLogin(this.authRepository) : assert(authRepository != null);

  Future<bool> call(String username, String password) async =>
      await authRepository.login(username, password);
}
