import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oldwave/src/ui/cart_screen.dart';
import 'package:oldwave/src/ui/home.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 15, left: 25),
              child: Icon(
                Icons.menu,
                color: Color(0xff772ce8),
                size: 30,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Home()));
              },
              child: Image.asset(
                'assets/imgs/oldwave-logo-horizontal.png',
                width: 131,
                height: 32,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              child: TextButton(
                onPressed: () {},
                child: SvgPicture.asset('assets/imgs/login-icon.svg',
                    height: 25, width: 25, color: Color(0xff772ce8)),
              ),
            ),
            Container(
              // margin: const EdgeInsets.only(right: 28, left: 22),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => CartScreen()));
                },
                child: SvgPicture.asset('assets/imgs/carrito-icon.svg',
                    height: 30, width: 30, color: Color(0xff772ce8)),
              ),
            ),
          ],
        )
      ],
    );
  }
}
