import 'package:flutter/material.dart';
import 'package:online_store/src/pages/home_page.dart';
import 'package:online_store/src/routes/routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.home: (_) => const HomePage(),
  };
}
