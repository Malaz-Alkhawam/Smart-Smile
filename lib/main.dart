import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/provider.dart';
import 'package:smart_smile/core/constants/theme_provider.dart';
import 'package:smart_smile/core/utils/camera_provider.dart';
import 'package:smart_smile/presentation/screens/screens/screens/after_process.dart';
import 'package:smart_smile/presentation/screens/screens/screens/history.dart';
import 'package:smart_smile/presentation/screens/screens/screens/new_case.dart';
import 'package:smart_smile/presentation/screens/screens/screens/splash_screen.dart';
import 'package:smart_smile/presentation/screens/screens/widgets/patiant_search.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => CameraProvider()),
        // ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
