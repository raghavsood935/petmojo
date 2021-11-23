import 'package:flutter/material.dart';

class BookingsView extends StatefulWidget {
  const BookingsView({Key? key}) : super(key: key);

  @override
  _BookingsViewState createState() => _BookingsViewState();
}

class _BookingsViewState extends State<BookingsView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Bookings"),
      ),
    );
  }
}
