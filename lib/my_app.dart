import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'business/ChangeThemeNotifier.dart';
import 'views/page_controller.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ChangeThemeNotifier>(
      create: (BuildContext context) => ChangeThemeNotifier(),
      child: const HomePage(title: 'Theme app'),
    );
  }
}
