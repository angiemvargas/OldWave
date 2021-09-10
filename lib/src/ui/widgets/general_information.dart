import 'package:flutter/material.dart';

class GeneralInformation extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('OldWave', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff772ce8), fontSize: 18.0)),
              Icon(Icons.expand_more, color: Color(0xff772ce8), size: 30)
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            width: 360,
            height: 1,
            color: Color(0xffe0e0e0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Links de interés', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff772ce8), fontSize: 18.0)),
              Icon(Icons.expand_more, color: Color(0xff772ce8), size: 30)
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            width: 360,
            height: 1,
            color: Color(0xffe0e0e0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Contacto', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff772ce8), fontSize: 18.0)),
              Icon(Icons.expand_more, color: Color(0xff772ce8), size: 30)
            ],
          )
        ],
      ),
    );
  }
}