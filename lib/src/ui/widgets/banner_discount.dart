import 'package:flutter/material.dart';

class BannerDiscount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset('assets/imgs/banner-blackfriday.png', ),
          Image.asset('assets/imgs/banner-blackfriday.png', )
        ],
      ),
    );
  }
}