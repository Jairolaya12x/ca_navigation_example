abstract class IAuthDataSource {
  Future<bool> login(String username, String password);
}
