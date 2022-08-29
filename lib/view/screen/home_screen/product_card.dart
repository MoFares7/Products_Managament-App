// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:products_managament/configs/size.dart';
import 'package:sizer/sizer.dart';

class ProductCard extends StatelessWidget {
  int index;
  ProductCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 30.h,
        width: 50.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 229, 232, 233)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 10.h,
              //width: 60.w,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1571782742478-0816a4773a10?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjJ8fHByb2R1Y3RzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: deffultpadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'data',
                    style:
                        TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '2000',
                    style:
                        TextStyle(fontSize: 9.sp, fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
