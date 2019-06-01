abstract class UserService {
  /// Logs in user and returns User Profile
  login(String user, String password);

  /// Register user and returns user profile
  register(String user, String password);

  /// logs out user
  logout();

  /// Changes current user language or stores in DB before registration
  changeLanguage(String languageCode);
}
