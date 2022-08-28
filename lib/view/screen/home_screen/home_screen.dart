import 'package:flutter/material.dart';
import 'package:products_managament/configs/size.dart';
import 'package:products_managament/configs/theme.dart';
import 'package:products_managament/view/page/welcome_screen/welcome_screen.dart';
import 'package:products_managament/view/screen/home_screen/product_item.dart';
import 'package:products_managament/widget/search_filed.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final ValueNotifier<String?> _searchText = ValueNotifier<String?>(null);

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(
            width: deffultpadding,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: deffultpadding),
            child: SearchField(
              onSearch: (query) {
                _searchText.value = query;
              },
            ),
          ),
          const SizedBox(
            height: deffultpadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: const BoxDecoration(
                    //color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/coupon.jpg'))),
              ),
              const SizedBox(
                height: deffultpadding,
              ),
              GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 2, crossAxisCount: 3),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ItemTile(index);
                  }),
            ]),
          )
        ],
      ),
    );
  }
}
