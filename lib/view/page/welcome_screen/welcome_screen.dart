import 'package:flutter/material.dart';
import 'package:products_managament/configs/size.dart';
import 'package:products_managament/view/screen/Rootscreen/root_screen.dart';

import '../../screen/home_screen/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'assets/images/welcome.jpg',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: deffultpadding * 3),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: deffultpadding * 5),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).iconTheme.color,
                    border: Border.all()),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RootScreen()));
                  },
                  height: 20,
                  minWidth: 20,
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
