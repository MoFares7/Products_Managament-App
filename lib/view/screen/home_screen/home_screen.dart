import 'package:flutter/material.dart';
import 'package:products_managament/configs/size.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(
            width: deffultpadding * 3,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: deffultpadding, horizontal: deffultpadding),
            child: SearchField(
              onSearch: (query) {
                _searchText.value = query;
              },
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(children: [
              Image.asset('name')
            ]),
          )
        ],
      ),
    );
  }
}
