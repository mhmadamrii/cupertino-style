class AuthService {
  Future<bool> login(String username, String password) async {
    if (username == 'user' && password == 'user') {
      return true;
    }

    return false;
  }
}
