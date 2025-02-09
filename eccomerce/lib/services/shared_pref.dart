import 'package:shared_preferences/shared_preferences.dart';

class SharedpreferenceHelper {
  static String userIdkey = "USERKEY";
  static String userNamekey = "USERNAMEKEY";
  static String userMailkey = "USEREMAILKEY";
  static String userImagekey = "USERIMAGEKEY";

  Future<bool> saveUserId(String getUserId) async {
    SharedPreferences prefs =
        SharedPreferences.getInstance() as SharedPreferences;
    return prefs.setString(userIdkey, getUserId);
  }

  Future<bool> saveUserName(String getUserName) async {
    SharedPreferences prefs =
        SharedPreferences.getInstance() as SharedPreferences;
    return prefs.setString(userNamekey, getUserName);
  }

  Future<bool> saveUserMail(String getUserEmail) async {
    SharedPreferences prefs =
        SharedPreferences.getInstance() as SharedPreferences;
    return prefs.setString(userMailkey, getUserEmail);
  }

  Future<bool> saveUserImage(String getUserImage) async {
    SharedPreferences prefs =
        SharedPreferences.getInstance() as SharedPreferences;
    return prefs.setString(userImagekey, getUserImage);
  }
}
