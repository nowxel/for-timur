import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.touch_app_outlined
          )
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
              "Tap the product to add to cart",
              style: TextStyle(
                fontSize: 11.5,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              )
          ),
        ),
        Text(
            "SORT BY",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold)
        ),
        IconButton(
            icon: Icon(
                Icons.filter_alt
            )
        ),
      ],
    );
  }
}
