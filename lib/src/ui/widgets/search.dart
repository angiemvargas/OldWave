import 'package:flutter/material.dart';

class Search extends StatelessWidget{

  String valor = '';
  final ValueChanged<String> onService;

  Search({required this.onService });

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
            TextButton(
              onPressed: () {
                onService(valor);
              },
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Icon(Icons.search, color: Color(0xff772ce8), size: 30, ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: SizedBox(
                width: 250,
                height: 60,
                child: TextField(  
                  //obscureText: true,  
                  onChanged: (text) {
                    valor = text;
                  },
                  decoration: InputDecoration(  
                    //border: OutlineInputBorder(),  
                    //labelText: 'Password',  
                    hintText: 'Estoy buscando.....',  
                  ),  
                ),
              ),
            )
          ],),
        ),
      ),
    );
  }
}