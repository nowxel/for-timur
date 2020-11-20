import 'package:flutter/material.dart';
import 'package:flutter_app/screens/components/body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme
          .of(context)
          .primaryColor,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

   AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        iconSize: 30.0,
        color: Colors.white,
          onPressed: (){

          }
      ),
      title: Text('Dresses',
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFFFEF9EB),
        ),
      ),
      elevation: 0.0,
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.search)
        ),
        IconButton(
          icon: Icon(Icons.search),
        )
      ],
    );
   }
}
