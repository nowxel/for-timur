import 'package:flutter/material.dart';
import 'package:flutter_app/models/product.dart';
import 'package:flutter_app/widgets/categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Expanded(
            child: Container(
                height: 500.0,
                decoration: new BoxDecoration(
                  color: Theme
                      .of(context)
                      .accentColor,
                  borderRadius: new BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Categories(),
                  ),
                  Expanded(child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      childAspectRatio: 0.75,
                    ),
                  itemBuilder: (context, index) => ItemCard(),
                  ),
                  ),
                ],
              )
            ),
          ),
        ],
      );
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key, this.product, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        padding: EdgeInsets.all(8.0),
        height: 180,
        width: 160,
        decoration: BoxDecoration(
          color: products[0].color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Image.asset(products[0].image),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(products[0].title),
      ),
      Text("\$234", style: TextStyle(fontWeight: FontWeight.bold),)
                ],);
  }
}



