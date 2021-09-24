import 'package:flutter/material.dart';
import 'package:oldwave/src/models/product.dart';
import 'package:oldwave/src/ui/material_ui/constants.dart';

class TitleAndImage extends StatelessWidget {
  // const TitleAndImage({
  //   required Key key,
  //   required this.product,
  // }) : super(key: key);

  // final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: oldWaveDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            "NEVERA HACEB",
            style: Theme.of(context)
                .textTheme
                .headline4
                //.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: oldWaveDefaultPaddin),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "25900",
                      style: Theme.of(context).textTheme.headline4//.copyWith(
                          //color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(width: oldWaveDefaultPaddin),
              Expanded(
                child: Hero(
                  tag: "nevera",
                  child: Image.asset(
                    "/home/sebastian/Documentos/empresariales/project-final/OldWave/lib/src/ui/material_ui/icons/negro.png",
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

