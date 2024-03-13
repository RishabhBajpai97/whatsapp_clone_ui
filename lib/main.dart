import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:whatsapp_clone_ui/features/welcome/welcome_screen.dart";
import "package:whatsapp_clone_ui/routes.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 683),
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: routes,
          home: SafeArea(
            child: WelcomeScreen(),
          ),
        );
      },
    );
  }
}
