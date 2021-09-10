import 'package:flutter/material.dart';
import 'package:oldwave/src/models/item_categories.dart';
import 'package:oldwave/src/ui/widgets/item_category.dart';

class CarruselCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    List<ItemCategories> listCategories = <ItemCategories>[];
    listCategories.add(ItemCategories('Carros', 'assets/imgs/icon-carro.svg'));
    listCategories.add(ItemCategories('Motos', 'assets/imgs/icon-moto.svg'));
    listCategories.add(ItemCategories('Ropa', 'assets/imgs/icon-ropa.svg'));
    listCategories.add(ItemCategories('Deporte', 'assets/imgs/icon-deporte.svg'));
    listCategories.add(ItemCategories('Muebles', 'assets/imgs/icon-mueble.svg'));
    listCategories.add(ItemCategories('Computadores', 'assets/imgs/icon-computadores.svg'));
    listCategories.add(ItemCategories('Celulares', 'assets/imgs/icon-celular.svg'));
    listCategories.add(ItemCategories('TV, Audio y Foto', 'assets/imgs/icon-tv.svg'));
    listCategories.add(ItemCategories('Electrodomésticos', 'assets/imgs/icon-electrodomesticos.svg'));

    return Container(
      height: 130,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: getListCategories(listCategories),
      ),
    );
  }


  List<ItemCategory> getListCategories(List<ItemCategories> lista){
    return lista.map((e) => ItemCategory(e)).toList();
  }

}