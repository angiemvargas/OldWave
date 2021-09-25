import 'package:flutter/material.dart';
import 'package:oldwave/src/blocs/home_bloc.dart';
import 'package:oldwave/src/details/details_screen.dart';
import 'package:oldwave/src/di/injector.dart';
import 'base_state.dart';
import 'widgets/banner_discount.dart';
import 'widgets/carrusel_categories.dart';
import 'widgets/general_information.dart';
import 'widgets/nav_bar.dart';
import 'widgets/quality_option.dart';
import 'widgets/search.dart';

class Home extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends BaseState<Home, HomeBloc> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: NavBar(),
            ),
            Search(),
            BannerDiscount(),
            FloatingActionButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailScreen(), 
                  ));
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                '¿Qué estás buscando hoy?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff772ce8),
                  fontSize: 18.0,
                ),
              ),
            ),
            CarruselCategories(),
            QualityOption(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: GeneralInformation(),
            ),
          ],
        ),
      ),
    );
  }

   void _service (){
     //bloc!.getProductListByProduct("1"); 
     bloc!.getDetailPrductById('1', '3');
  }

  @override
  HomeBloc getBlocInstance() {
    return HomeBloc(
      Injector().provideProductListUseCase(),
      Injector().providerDetailProductUseCase()
    );
  }
}
