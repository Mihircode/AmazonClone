import 'package:amazonclone/models/product_model.dart';
import 'package:amazonclone/widgets/MyCarousel.dart';

import 'package:amazonclone/widgets/customAppbar.dart';
import 'package:amazonclone/widgets/poster.dart';
import 'package:amazonclone/widgets/product_carousel.dart';
import 'package:amazonclone/widgets/search_box.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: ListView(
        children: [
          MySearchBox(),
          MyCarousel(),
          Poster(),
          SizedBox(
            height: 15,
          ),
          ProductCarousel(
            title: 'Amazon Prime Deals',
            products: products,
          ),
          ProductCarousel(
            title: 'Popular Books',
            products: books,
          ),
        ],
      ),
    );
  }
}
