import 'package:flutter/material.dart';
import 'package:ticketing/UI/homepage.dart';
import 'package:ticketing/UI/seat_reservation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.dark(),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SeatReservation(),
    );
  }
}
