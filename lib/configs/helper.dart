import 'package:flutter/material.dart';
import 'package:products_managament/view/page/welcome_screen/welcome_screen.dart';
import 'package:sizer/sizer.dart';

class Helper {
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
}
