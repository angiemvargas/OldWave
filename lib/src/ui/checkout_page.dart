import 'package:flutter/material.dart';
import 'package:oldwave/src/blocs/checkout_page_bloc.dart';
import 'package:oldwave/src/blocs/provider/cart_provider.dart';
import 'package:oldwave/src/ui/base_state.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';


class CheckoutPage extends StatefulWidget {

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends BaseState<CheckoutPage, CheckoutPageBloc> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headline1),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: _CartList(),
              ),
            ),
            const Divider(height: 4, color: Colors.black),
            _CartTotal()
          ],
        ),
      ),
    );
  }

  @override
  CheckoutPageBloc getBlocInstance() {
    return CheckoutPageBloc();
  }

}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var itemNameStyle = Theme.of(context).textTheme.headline6;
    // This gets the current state of CartModel and also tells Flutter
    // to rebuild this widget when CartModel notifies listeners (in other words,
    // when it changes).
    // var cart = context.watch<CartModel>();
    var cartProvider = context.watch<CartProvider>();

    return ListView.builder(
      itemCount: cartProvider.flutterCart.cartItem.length,
      itemBuilder: (context, index) => ListTile(
        leading: const Icon(Icons.done),
        trailing: IconButton(
          icon: const Icon(Icons.remove_circle_outline),
          onPressed: () {
            cartProvider.decrementItemFromCartProvider(index);
          },
        ),
        title: Text(
          cartProvider.flutterCart.cartItem[index].productName.toString(),
          style: itemNameStyle,
        ),
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
final formatCurrency = new NumberFormat.simpleCurrency();

  @override
  Widget build(BuildContext context) {
    var hugeStyle =
        Theme.of(context).textTheme.headline1!.copyWith(fontSize: 40);

    return SizedBox(
      height: 200,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CartProvider>(
                builder: (context, cart, child) => Text(
                    '${formatCurrency.format(cart.getTotalAmount())}',
                    style: hugeStyle)),
            //SizedBox(width: 5),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Buying not supported yet.')));
              },
              style: TextButton.styleFrom(primary: Colors.white),
              child: const Text('BUY'),
            ),
          ],
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:oldwave/src/ui/widgets/nav_bar.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class CheckoutPage extends StatelessWidget {
//   const CheckoutPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sample Code'),
//         // // backgroundColor: Color(0xff772ce8),
//         // // backgroundColor: Color(0xff9c65f9),
//         backgroundColor: Color(0xff7444fb),
//         // leading: ,
//       ),
//       body: Column(
//         children: [
//           SafeArea(child: NavBar()),
//           Center(child: Text('You have pressed the button times.')),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => {},
//         tooltip: 'Increment Counter',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }