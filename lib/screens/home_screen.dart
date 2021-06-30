import 'package:amazonclone/models/product_model.dart';
import 'package:amazonclone/screens/cart_screen.dart';
import 'package:amazonclone/widgets/poster.dart';
import 'package:amazonclone/widgets/product_carousel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.cyan[200],
        leading: Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: InkResponse(
            onTap: () => print('Menu'),
            child: Icon(
              Icons.menu,
              size: 30.0,
              color: Colors.black,
            ),
          ),
        ),
        title: Image(
          image: AssetImage('assets/images/amazon_logo.jpg'),
          height: 25.0,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: InkResponse(
              onTap: () => print('mic'),
              child: Icon(
                Icons.mic,
                size: 30.0,
                color: Colors.black,
              ),
            ),
          ),
          Stack(
            children: [
              Positioned(
                child: Padding(
                  padding: EdgeInsets.only(top: 12.0, right: 20.0),
                  child: InkResponse(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => CartScreen(),
                      ),
                    ),
                    child: Icon(
                      Icons.shopping_basket,
                      size: 30.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 32,
                right: 20,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: Center(
                    child: Text(
                      '5',
                      textScaleFactor: 0.8,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
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
