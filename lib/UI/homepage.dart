import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  PageController pageController = PageController();
  double pageOffset =1.0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            color:  Color(0xff1c1c27),
            blurRadius: 60,
            spreadRadius: 80

          )]
        ),
        child: FloatingActionButton.extended(
          backgroundColor: Colors.transparent,
          onPressed: (){}, label: MaterialButton(onPressed: (){},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),

          ),
          height: 70,
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 60),
          child: Center(child: Text("Get Reservation"),
          ),
          ),
          ),
          ),
      )
    );
  }
}
