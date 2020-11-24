import 'package:flutter/material.dart';


class CartCounter extends StatefulWidget {
  CartCounter() : super();
  @override
  _CartCounterState createState() => _CartCounterState();
}

class Cart {
  int id;
  String name;

  Cart(this.id, this.name);

  static List<Cart> getCarts() => <Cart>[
    Cart(1, '1'),
    Cart(2, '2'),
    Cart(3, '3'),
    Cart(4, '4'),
    Cart(5, '5'),
    Cart(6, '6'),
    Cart(7, '7'),
    Cart(8, '8'),
    Cart(9, '9'),
    Cart(10, '10')
  ];
}

class _CartCounterState extends State<CartCounter> {
//
List<Cart> _carts = Cart.getCarts();
List<DropdownMenuItem<Cart>> _dropdownMenuItems;
Cart _selectedCart;

@override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_carts);
    _selectedCart = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Cart>> buildDropdownMenuItems(List carts) {
    List<DropdownMenuItem<Cart>> items = List();
    for(Cart cart in carts){
      items.add(
          DropdownMenuItem(
            value: cart,
            child: Text(cart.name),
          )
      );
    }
    return items;
  }
onChangeDroopdownItem(Cart selectedCart){
  setState(() {
    _selectedCart = selectedCart;
  });
}
  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Column(
        children: <Widget>[

          SizedBox(height: 5.0,),
          DropdownButton(
            value: _selectedCart,
            items: _dropdownMenuItems,
            onChanged: onChangeDroopdownItem,
          ),

        ],
      ),
    );
  }
}
