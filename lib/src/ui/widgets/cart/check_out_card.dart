import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oldwave/src/ui/size_config.dart';
import 'package:oldwave/src/blocs/provider/cart_provider.dart';
import 'package:provider/provider.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const kTextColor = Color(0xFF757575);
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(10),
        horizontal: getProportionateScreenWidth(30),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          // bottomRight: Radius.circular(10),
          // bottomLeft: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -5),
            blurRadius: 20,
            color: Theme.of(context).accentColor.withOpacity(0.1),
          ),
        ],
      ),
      child: SafeArea(
        child: SafeAreaContent(kTextColor: kTextColor),
      ),
    );
  }
}

class SafeAreaContent extends StatelessWidget {
  const SafeAreaContent({
    Key? key,
    required this.kTextColor,
  }) : super(key: key);

  final Color kTextColor;

  @override
  Widget build(BuildContext context) {
    double totalAmount =
        context.watch<CartProvider>().flutterCart.getTotalAmount();

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: getProportionateScreenHeight(10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(
              TextSpan(
                text: "Total:\n",
                children: [
                  TextSpan(
                    text: NumberFormat.currency(
                      name: 'COP \$',
                      decimalDigits: 0,
                    ).format(totalAmount),
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(
              // width: double.infinity,
              width: getProportionateScreenWidth(140),
              height: getProportionateScreenHeight(56),
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  primary: Colors.white,
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Compras no soportadas')));
                },
                child: Text(
                  'Continuar compra',
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(18),
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
