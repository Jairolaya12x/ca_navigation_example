abstract class IAuthRepository {
  Future<bool> login(String username, String password);
}