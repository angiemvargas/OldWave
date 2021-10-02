import 'package:flutter/material.dart';
import 'package:oldwave/src/blocs/home_bloc.dart';
import 'package:oldwave/src/ui/details_screen.dart';
import 'package:oldwave/src/di/injector.dart';
import 'package:oldwave/src/ui/product_list.dart';
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

  String valor = '';

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
            Container(
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
                            hintText: 'Buscar.....',  
                          ),  
                  ),
                      ),
                    )
                  ],),
                ),
              ),
            ),
            BannerDiscount(),
            FloatingActionButton(
              onPressed: () {
                _service();
                 /*Navigator.of(context).push(MaterialPageRoute(
                   builder: (context) => ProductList(),
                  ));*/
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

  void _service() {
    bloc!.getProductListByProduct(valor).then((productList) {
      Navigator.of(context)
      .push(MaterialPageRoute(
        builder: (context) => ProductList(list: productList)));
    }).catchError((error) => print(error));
  }

  @override
  HomeBloc getBlocInstance() {
    return HomeBloc(
      Injector().provideProductListUseCase()
    );
  }
}
