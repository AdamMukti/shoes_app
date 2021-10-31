import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:shoes_app/themes.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/images/arrow_left.png',
                      width: 8,
                    ),
                  ),
                  Text(
                    'Details',
                    style: heading.copyWith(fontSize: 20),
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
            Image.asset('assets/images/shoe_detail.png'),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nike Air Max\nInfinity 2',
                    style: heading.copyWith(
                      fontSize: 32,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '\$84,22',
                        style: heading.copyWith(
                          color: Color(0xfff31f1f),
                          fontSize: 28,
                        ),
                      ),
                      Text(
                        '\$134,22',
                        style: textSecondary.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Image.asset('assets/images/star_icon.png', width: 12),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    '4.8 (1923 reviews)',
                    style: text.copyWith(fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'With its futuristic look, accentuated heel and mixed-\nmaterial upper, the Nike Air Max Infinity 2 brings you a\ntextured, fashion-forward look you can wear day in\nand day out.',
                style: text.copyWith(color: Color(0xff616161), height: 1.5),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Size',
                style: heading,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GroupButton(
                    buttonHeight: 52,
                    buttonWidth: 52,
                    spacing: 6,
                    buttons: const ['39', '40', '41', '42', '43', '45'],
                    borderRadius: BorderRadius.circular(14),
                    onSelected: (i, selected) =>
                        debugPrint('Button #$i selected'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff0BC6E5),
                      Color(0xff00248B),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Add to Cart',
                        style: textBtn,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Image.asset(
                        'assets/images/bag_icon.png',
                        width: 18,
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    ));
  }
}
