import 'package:flutter/material.dart';
import 'package:flutter_app/models/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
