import "package:flutter/material.dart";
import "package:whatsapp_clone_ui/features/login/login_screen.dart";
import "package:whatsapp_clone_ui/features/welcome/welcome_screen.dart";
 Map<String, Widget Function(BuildContext)>routes = <String, WidgetBuilder>{
        "/welcome":(context) => WelcomeScreen(),
        "/login":(context) => const LoginScreen(),
};