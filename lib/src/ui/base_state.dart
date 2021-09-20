import 'package:flutter/material.dart';
import '../blocs/provider/bloc.dart';
import '../blocs/provider/provider.dart';

abstract class BaseState<T extends StatefulWidget, K extends Bloc>
    extends State<T> {
 
  K? bloc;

  @override
  void initState() {
    super.initState();
    bloc = Provider.of<K>(getBlocInstance);
    WidgetsBinding.instance!.addPostFrameCallback(onBuildCompleted);
  }

  @override
  void dispose() {
    Provider.dispose<K>();
    super.dispose();
  }

  K getBlocInstance();
   void onBuildCompleted(Duration timeStamp) {
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }
}
