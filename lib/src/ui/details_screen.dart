import 'package:flutter/material.dart';
import 'package:oldwave/src/blocs/detail_product_bloc.dart';
import 'package:oldwave/src/models/detail_product.dart';
import 'package:oldwave/src/ui/base_state.dart';
import 'package:oldwave/src/ui/widgets/product_detail.dart';

class DetailScreen extends StatefulWidget {
  DetailProduct detailProduct;

  DetailScreen({ required this.detailProduct});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends BaseState<DetailScreen, DetailProductBloc>{

  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: ProductDetail(product: widget.detailProduct),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff772ce8),
      elevation: 0,
    );
  }

  @override
  DetailProductBloc getBlocInstance() {
    return DetailProductBloc();
  }
}
