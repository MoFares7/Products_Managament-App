import 'package:flutter/material.dart';
import 'package:products_managament/configs/size.dart';
import 'package:products_managament/view/screen/home_screen/product_card.dart';
import 'package:products_managament/view/screen/home_screen/product_item.dart';
import 'package:products_managament/widget/search_filed.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final ValueNotifier<String?> _searchText = ValueNotifier<String?>(null);

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: deffultpadding,
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: deffultpadding),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemCount: 11,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: deffultpadding,
                            vertical: deffultpadding),
                        child: ProductCard(
                          index: index,
                        ),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
