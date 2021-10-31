import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:shoes_app/detail_page.dart';
import 'package:shoes_app/themes.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/menu_icon.png',
                      width: 24,
                    ),
                    Image.asset(
                      'assets/images/nike_icon.png',
                      width: 36,
                    ),
                    Image.asset(
                      'assets/images/cart_icon.png',
                      width: 24,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 36,
              ),
              Text(
                'Energy Week Sale',
                style: heading,
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'LAST CHANCE TO SAVE UP TO 60%',
                style: text.copyWith(
                  color: Color(0xff616161),
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailPage()));
                  },
                  child: MainShoeCard(
                      title: 'Nike Air Max\nInfinity 2',
                      discPrice: '\84,22',
                      price: '\134,22',
                      review: '4.8 (1923 reviews)',
                      image: 'assets/images/shoes_hero.png'),
                ),
              ),
              SizedBox(
                height: 36,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New Release',
                      style: heading,
                    ),
                    Row(
                      children: [
                        Text(
                          'See All',
                          style: text,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Image.asset('assets/images/arrow_icon.png'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShoeCard(
                      title: 'Nike Air Max\n2021',
                      discPrice: '\91,22',
                      price: '\144,22',
                      review: '4.5 (313 reviews)',
                      image: 'assets/images/air_max_2021.png',
                    ),
                    ShoeCard(
                      title: 'Nike Air Max\n270 React',
                      discPrice: '\91,22',
                      price: '\144,22',
                      review: '4.5 (313 reviews)',
                      image: 'assets/images/air_max_270.png',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShoeCard extends StatelessWidget {
  String title;
  String discPrice;
  String price;
  String review;
  String image;
  ShoeCard({
    Key? key,
    required this.title,
    required this.discPrice,
    required this.price,
    required this.review,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            image,
            width: 160,
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style: heading.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Column(
                children: [
                  Text(
                    discPrice,
                    style: heading.copyWith(
                      color: Color(0xfff31f1f),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    price,
                    style: textSecondary.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Image.asset('assets/images/star_icon.png', width: 12),
              SizedBox(
                width: 8,
              ),
              Text(
                review,
                style: text.copyWith(fontSize: 12),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

class MainShoeCard extends StatelessWidget {
  String title;
  String discPrice;
  String price;
  String review;
  String image;
  MainShoeCard({
    Key? key,
    required this.title,
    required this.discPrice,
    required this.price,
    required this.review,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Image.asset(image),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: heading,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          discPrice,
                          style: heading.copyWith(
                            color: Color(0xfff31f1f),
                          ),
                        ),
                        Text(price, style: textSecondary),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Image.asset('assets/images/star_icon.png', width: 12),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      review,
                      style: text.copyWith(fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
