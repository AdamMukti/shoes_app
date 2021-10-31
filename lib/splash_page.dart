import 'package:flutter/material.dart';
import 'package:shoes_app/home.dart';
import 'package:shoes_app/themes.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'assets/images/splash_screen.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Achive Your',
                  style: heading.copyWith(fontSize: 24),
                ),
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: [
                        Color(0xff0BC6E5),
                        Color(0xff00248B),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ).createShader(Offset.zero & bounds.size);
                  },
                  child: Text(
                    ' Goals',
                    style: heading.copyWith(
                      fontSize: 24,
                      color: Color(0xff00248B),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'With Our Product',
              style: heading.copyWith(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'Feeling the diffrence join the\n other to pass your limits',
              style: text,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 36,
            ),
            Container(
              width: 200,
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
                child: Text(
                  'Just do it >',
                  style: textBtn,
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
