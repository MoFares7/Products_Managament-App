import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:products_managament/view/screen/Rootscreen/root_screen.dart';
import 'package:sizer/sizer.dart';

import 'configs/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Products Management System',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light(),
          darkTheme: AppTheme.dark(),
          home: const RootScreen(),
        );
      },
    );
  }
}
