import 'package:flutter/material.dart';
import 'package:products_managament/view/screen/home_screen/home_screen.dart';
import 'package:products_managament/view/screen/settings_screen/settings_screen.dart';
import 'package:sizer/sizer.dart';

import '../../page/welcome_screen/welcome_screen.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final page = [
      const HomeScreen(),
      Center(
        child: Text(
          'Page 2',
          style: TextStyle(fontSize: 14.sp),
        ),
      ),
      const SettingScreen(),
      Center(
        child: Text(
          'Page 2',
          style: TextStyle(fontSize: 14.sp),
        ),
      ),
    ];
    return Scaffold(
      body: page[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (index) => setState(
          () => this.index = index,
        ),
        height: 60,
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.production_quantity_limits),
              selectedIcon: Icon(Icons.production_quantity_limits),
              label: 'Products'),
          NavigationDestination(
              icon: Icon(Icons.settings_outlined),
              selectedIcon: Icon(Icons.settings),
              label: 'Settings'),
        ],
      ),
    );
  }
}

void showLogOutDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (_) => AlertDialog(
      elevation: 24,
      actions: [
        TextButton(
          onPressed: () {
            //     context.read<LogoutBloc>().add(LogoutEventPressed());
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const WelcomeScreen()));
          },
          child: Text(
            ('yes'),
            style: TextStyle(
                fontSize: 8.sp,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).iconTheme.color
                //color: Colors.black
                ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(('no'),
              style: TextStyle(
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).iconTheme.color
                  //color: Colors.black
                  )),
        ),
      ],
      title: Text(
        ('Warning'),
        style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.w700,
            color: Theme.of(context).iconTheme.color
            //color: Colors.black
            ),
      ),
      content: Text(
        ('Do you want to log out?'),
        style: TextStyle(
          fontSize: 8.sp,
          fontWeight: FontWeight.w700,
          //color: Colors.black
        ),
      ),
    ),
  );
}
