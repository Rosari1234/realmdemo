import 'package:realmnew/services/user_service.dart';
import 'package:realmnew/splash.dart';
import 'package:flutter/material.dart';
import 'package:realm/realm.dart';

 const appId = "application-0-kqlno";
//const appId = "realm-cduwc";
void main() {
  final App atlasApp = App(AppConfiguration(appId));
  final UserService userService = UserService(atlasApp);
  runApp(MyApp(
    userService: userService,
  ));
}

class MyApp extends StatelessWidget {
  final UserService userService;

  const MyApp({super.key, required this.userService});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Test List',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: SplashScreen(
        userService: userService,
      ),
    );
  }
}
