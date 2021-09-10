import 'package:flutter/material.dart';

class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff772ce8), height: 80.0, width: 392.0,
      child: Container(
        height: 36,
        width: 337,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0)
          ),
          margin: EdgeInsets.all(20),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search, color: Color(0xff772ce8), size: 30, ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text('Estoy buscando ...'),
            )
          ],),
        ),
      ),
    );
  }
}