import 'package:flutter/material.dart';
import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/ui/size_config.dart';

import 'add_cart.dart';
import 'cart_counter.dart';
import 'counter.dart';
import 'default_button.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';


class Body extends StatelessWidget {
  Counter counter = new Counter();
  final DetailProduct product;

  Body({required this.product});

  @override
  Widget build(BuildContext context) {
    
    return ListView(
     children: [
       ProductImages(product: product),
         TopRoundedContainer(
           color: Colors.white,
          child: Column(
             children: [
               ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Color(0xFFF6F7F9),
                child: Column(
                   children: [
                     CartCounter(product: product,numItem:counter),
                    TopRoundedContainer(
                       color: Colors.white,
                       child: Padding(
                       padding: EdgeInsets.only(
                          left: SizeConfig.screenWidth * 0.15,
                          right: SizeConfig.screenWidth * 0.15,
                          bottom: getProportionateScreenWidth(40),
                          top: getProportionateScreenWidth(15),
                        ),
                        child: AddToCart(product: product,numItem:counter),
                      ),
                    ),
                  ],
                ),
              ),
            ],
           ),
         ),
       ],
    );
  }
}

