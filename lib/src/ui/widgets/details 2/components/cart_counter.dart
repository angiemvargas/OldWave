
import 'package:flutter/material.dart';
import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/ui/material_ui/constants.dart';
import 'package:oldwave/src/ui/size_config.dart';

import 'counter.dart';

class CartCounter extends StatefulWidget {
  final DetailProduct product;
  Counter numItem;
  CartCounter({required this.product, required this.numItem});
  @override
  _CartCounterState createState() => _CartCounterState (); 
}
  
class _CartCounterState extends State<CartCounter>{
  
  @override
  Widget build(BuildContext context) {
    Counter numItem = widget.numItem;
    var product= widget.product;
    return Row(
      children: [
        SizedBox(
          width: 50,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: GestureDetector(
              onTap: () {
                // dirigir a detalle?
              },
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(2)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(.4),
                        offset: Offset(3, 2),
                        blurRadius: 7)
                  ],
                ),
                child: Image.network(

                  product.seller.logo,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 80,
              child: Text(
                product.seller.name,
                style: TextStyle(color: Colors.black, fontSize: 16),
                overflow: TextOverflow.fade,
                maxLines: 3,
              ),
            ),
            SizedBox(height: 10),
            
          ],
        ),
        SizedBox(width: 10),
        IconButton(
          onPressed: () {
            if(numItem.numItem > 1){
            setState((){
              numItem.down();
            });
            }
          },
          icon: Icon(Icons.remove),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: oldWaveDefaultPaddin / 2),
          child: Text(
            numItem.numItem.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        IconButton(
          onPressed: () {
            setState((){
              numItem.up();
            });
          },
          icon: Icon(Icons.add),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    );
  }

}

