import 'package:flutter/material.dart';
import 'package:ticketing/models/seat_model.dart';

class SeatReservation extends StatefulWidget {
  const SeatReservation({Key? key}) : super(key: key);

  @override
  _SeatReservationState createState() => _SeatReservationState();
}

class _SeatReservationState extends State<SeatReservation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Select Seats"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          welcomeBorder(context),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              ...List.generate(numRow.length, (colIndex) {
                return Padding(
                  padding: EdgeInsets.only(bottom: colIndex == 0 || colIndex == numRow.length - 1 ? 6 : 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // ...List.generate(numCol.length, (rowIndex){
                      //   return InkWell(onTap: (){

                      //   },);
                      // })
                    ],
                  ),
                );
              })
            ],
          )
        ],
      ),
    );
  }

  Padding welcomeBorder(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        height: 65,
        child: Stack(
          children: [
            Positioned(
              top: -5,
              child: ClipPath(
                clipper: ClipBorder(),
                child: Container(
                  width: MediaQuery.of(context).size.width - 60,
                  height: 70,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xFFffb43b).withOpacity(0.3),
                      Colors.transparent,
                    ], stops: [
                      0.35,
                      1
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                ),
              ),
            ),
            Positioned(
              top: -10,
              child: ClipPath(
                clipper: ClipShadow(),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Color(0xFFffb43b),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ClipShadow extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height - 30);
    path.quadraticBezierTo(size.width / 2, -20, 0, size.height - 30);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class ClipBorder extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height - 30);
    path.quadraticBezierTo(size.width / 2, -20, 0, size.height - 30);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
