import 'package:flutter/material.dart';
import 'package:flutter_app/models/product.dart';
import 'package:flutter_app/screens/components/item_card.dart';
import 'package:flutter_app/screens/details/components/details_screen.dart';
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
                  itemBuilder: (context, index) =>
                      ItemCard(product: products[index],
                      press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                product: products[index],
                        )
                      ))
                      ),
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