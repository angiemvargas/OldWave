import 'package:flutter/material.dart';
import 'package:oldwave/src/models/product.dart';

class SingleProductWidget extends StatelessWidget {
  final Product product;

  const SingleProductWidget({required Key key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(.5),
                offset: Offset(3, 2),
                blurRadius: 7)
          ]),
      child: Container(
        color: Color(0xF7F7F7),
        child:Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    product.thumbnail
                  )),
            ),
            Text(product.name, style: TextStyle(fontSize: 13.0)),
            Text(product.brand, 
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
                color: Color(0xff772ce8)
              )
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("\$${product.price}", 
                  style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff772ce8))),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 9.0, right: 9.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff772ce8),
                  ),
                  child: TextButton(
                    onPressed: () { },
                    child: Text('Agregar al carrito', 
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13.0
                      )
                    ),
                  )
                )
              ]
            ),
          ],
        ),
      )
    );
  }
}