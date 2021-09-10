import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QualityOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffc7f3fd),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                quality('assets/imgs/icon-compras-seguras.svg', 'Compras Seguras'),
                quality('assets/imgs/icon-multiples-medios-pago.svg', 'Múltiples medios de pago')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                quality('assets/imgs/icon-calidad-garantizada.svg', 'Calidad garantizada'),
                quality('assets/imgs/icon-envios-todo-elpais.svg', 'Enviós a todo el país')
                ],
              )
          ],
        ),
      ),
    );
  }


  Widget quality(String image, String text){
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container( height: 40, width: 40, child: SvgPicture.asset(image, height: 40, width: 40, color: Color(0xff772ce8))),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: 90,
            child: Text(text, style: TextStyle(color: Color(0xff772ce8), fontSize: 14.0))),
        )
      ],
    );
  }
}