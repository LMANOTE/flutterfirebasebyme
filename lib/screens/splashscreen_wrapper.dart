import 'package:flutter/material.dart';
import 'package:flutterfirebasebyme/models/user.dart';
import 'package:flutterfirebasebyme/screens/authenticate/authenticate_screen.dart';
import 'package:flutterfirebasebyme/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

class SplashScreenWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AppUser?>(context);
    if (user == null) {
      return AuthenticateScreen();
    } else {
      return HomeScreen();
    }
  }
}
