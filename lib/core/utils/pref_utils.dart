import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: must_be_immutable
class PrefUtils {
  PrefUtils() {
    SharedPreferences.getInstance().then((value) {
      _sharedPreferences = value;
    });
  }

  static SharedPreferences? _sharedPreferences;

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  void clearPreferencesData() async {
    _sharedPreferences!.clear();
  }

  Future<void> setCustomerId(String value) {
    return _sharedPreferences!.setString('customer_id', value);
  }

  String getCustomerId() {
    try {
      return _sharedPreferences!.getString('customer_id') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setEmail(String value) {
    return _sharedPreferences!.setString('email', value);
  }

  String getEmail() {
    try {
      return _sharedPreferences!.getString('email') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setFirstName(String value) {
    return _sharedPreferences!.setString('first_name', value);
  }

  String getFirstName() {
    try {
      return _sharedPreferences!.getString('first_name') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setLastName(String value) {
    return _sharedPreferences!.setString('last_name', value);
  }

  String getLastName() {
    try {
      return _sharedPreferences!.getString('last_name') ?? '';
    } catch (e) {
      return '';
    }
  }

  Future<void> setCartId(String value) {
    return _sharedPreferences!.setString('cart_id', value);
  }

  String getCartId() {
    try {
      return _sharedPreferences!.getString('cart_id') ?? '';
    } catch (e) {
      return '';
    }
  }
}
