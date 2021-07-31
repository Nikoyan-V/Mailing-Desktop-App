import 'dart:async';

import 'package:get_storage/get_storage.dart';

class Preferences {
  Preferences._();
  static const authToken = 'authToken';
  static const firstName = 'firstName';
  static const lastName = 'lastName';
  static const firebaseToken = 'firebaseToken';
  static const email = 'email';
  static const terms = 'terms';
  static const location = 'location';
  static const flavor = 'flavor';
}

class StorageHelper {
  static final storage = GetStorage();

  static Future<String> getUserName() async {
    return await storage.read(Preferences.firstName);
  }

  static Future<String> getUserSurname() async {
    return await storage.read(Preferences.lastName);
  }

  static Future<String?> getToken() async {
    return storage.read(Preferences.authToken);
  }

  static Future<String?> getFlavor() async {
    return storage.read(Preferences.flavor);
  }

  static Future<String> getEmail() async {
    return await storage.read(Preferences.email);
  }

  static Future<String> getTerms() async {
    return await storage.read(Preferences.terms);
  }

  static Future<String> getLocation() async {
    return await storage.read(Preferences.location);
  }

  static Future<void> setLocation(String location) async =>
      storage.write(Preferences.location, location);

  static Future<void> setTerms(String terms) async =>
      storage.write(Preferences.terms, terms);

  static Future<void> setFlavor(String terms) async =>
      storage.write(Preferences.flavor, terms);

  static Future<void> setUserName(String firstName) async =>
      storage.write(Preferences.firstName, firstName);

  static Future<void> setUseSurname(String lastName) async =>
      storage.write(Preferences.lastName, lastName);

  static Future<void> setToken(String token) async =>
      storage.write(Preferences.authToken, token);

  static Future<void> removeAccessToken() async {
    await storage.remove(Preferences.authToken);
  }

  static Future<void> removeAll() async {
    await storage.erase();
  }

  static Future<bool> isLoggedIn() async {
    final accessToken = await StorageHelper.getToken();
    return accessToken != null;
  }
}
