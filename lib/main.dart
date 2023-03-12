import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:interview/pages/splash/splash_screen.dart';

import 'pages/home/home_page.dart';
import 'pages/sidebar/sidebar.dart';

final ZoomDrawerController z = ZoomDrawerController();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'So Close',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xff5B9EE1),
      ),
      // home: const MainScreen(),
      home: const SplashScreen(),
      // home: const MyCustomDrawer(),

      // home: const MyHomePage(),
    );
  }
}

class MyCustomDrawer extends StatelessWidget {
  const MyCustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: z,
      borderRadius: 24,
      style: DrawerStyle.defaultStyle,
      // showShadow: true,
      openCurve: Curves.fastOutSlowIn,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      duration: const Duration(milliseconds: 500),
      // angle: 0.0,
      menuBackgroundColor: const Color(0xff1a2530),
      // menuScreen: Sidebar(),
      mainScreen: const MainScreen(),
      menuScreen: const Sidebar(),
    );
  }
}
