import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: IntroSlider());
  }
}

class IntroSlider extends StatefulWidget {
  @override
  _IntroSliderState createState() => _IntroSliderState();
}

class _IntroSliderState extends State<IntroSlider> {

  //Controller for the PageView
  PageController controller= PageController();

  final messages = ["First Screen", "Second Screen", "Third Screen"];
  final images = [
    'assets/images/slider1.jpg',
    'assets/images/slider2.jpg',
    'assets/images/slider3.jpg'
  ];

  int numberOfPages=3;
  int currentPage=0;

@override
Widget build(BuildContext context) {
return Scaffold(
  body: Stack(
    children: <Widget>[PageView.builder(
    controller: controller,
    onPageChanged: (index){
      setState(() {
        currentPage=index;
      });
    },
    itemCount: numberOfPages,
    itemBuilder: (BuildContext context, int index) {
      return EachPage(messages[index], images[index]);
    },
  ),
  Align(
    alignment: Alignment.bottomCenter,
    child: Container(
        height: 50,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
        Flexible(child: Container()),
    Flexible(
      child: Indicator(
        controller: controller,
      ),
    ),
    Flexible(

      child: (currentPage==numberOfPages-1)?
      GestureDetector(
          onTap: (){},
          child: Center(
              child: RaisedButton(
                onPressed: () {},
                child: Text("Login",style: TextStyle(fontWeight: FontWeight.bold)),
              ))):
      GestureDetector(
          onTap: (){
            controller.jumpToPage(numberOfPages-1);
          },
          child: Center(child: Text("Skip",style: TextStyle(fontWeight: FontWeight.bold),))),
    )
    ],),
),
  )
  ],
  ),
  );
}
}

class Indicator extends AnimatedWidget {

  final PageController controller;
  final int pageCount;
  const Indicator({this.controller,this.pageCount}) : super(listenable: controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[ListView.builder(
      shrinkWrap: true,
          itemCount: pageCount,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return _createIndicator(index);
          })],
    ),
    );
  }
  Widget _createIndicator(index) {
    double w=10;
    double h=10;
    MaterialColor color=Colors.grey;

    if(controller.page==index)
    {
      color=Colors.blueGrey;
      h=13;
      w=13;
    }

    return Container(
      height: 26,
      width: 26,
      child: Center(
        child: AnimatedContainer(
          margin: EdgeInsets.all(5),
          color: color,
          width: w,
          height: h,
          duration: Duration(milliseconds: 300),
        ),
      ),
    );
  }
}

class EachPage extends StatelessWidget {

  final String message;
  final String image;

  EachPage(this.message, this.image);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.amberAccent,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
          Image.asset(
          image,
            fit: BoxFit.scaleDown,
            width: 200,
            height: 200,),
          Text(message)
          ],
        ),
      ),
    ),
    );
  }
}
