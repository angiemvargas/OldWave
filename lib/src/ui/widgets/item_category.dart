import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oldwave/src/models/item_categories.dart';

class ItemCategory extends StatelessWidget {

ItemCategories item = ItemCategories.init();

ItemCategory(ItemCategories itemCategories){
  this.item = itemCategories;
}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 50,
            child: SvgPicture.asset(item.image, height: 10, width: 10)),
          Container(
            height: 35,
            width: 90,
            margin: const EdgeInsets.only(top: 8),
            child: Center(child: Text(item.title, style: TextStyle(fontSize: 10.0)))),
        ],
      ),
    );
  }
}