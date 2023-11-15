import 'package:flutter/material.dart';
import 'package:online_store/src/routes/app_routes.dart';
import 'package:online_store/src/routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      routes: appRoutes,
    );
  }
}
