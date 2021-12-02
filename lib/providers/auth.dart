import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier{
  String? _token;
  DateTime? _expiryDate;
  String? _userId;

  Future<void> _authenticate(String email, String password, String urlSegment) async {
    final url = Uri.parse('https://identitytoolkit.googleapis.com/v1/accounts:$urlSegment?key=AIzaSyCrDGa_JDwc1I0V6FNe82sBAwmzFur3nHc');
    final response = await http.post(url, body: json.encode({
      'email': email,
      'password': password,
      'returnSecureToken': true,
    }));
  }

  Future<void> signUp(String email, String password) async {
    return _authenticate(email, password, 'signUp');
  }

  Future<void> signIn(String email, String password) async {
    return _authenticate(email, password, 'signInWithPassword');
  }

}