import 'package:flutter/cupertino.dart';

class AuthProvider with ChangeNotifier {
  User user = User(
      name: 'Nana', email: 'nanamwangaza60@gmail.com', phone: '0676997723');

  void login({
    required String myName,
    required String myEmail,
    required String myPhone,
  }) {
    user = User(name: myName, email: myEmail, phone: myPhone);
    notifyListeners();
  }
}

class User {
  String name;
  String email;
  String phone;

  User({required this.name, required this.email, required this.phone});
}
