import 'package:flutter/material.dart';

class UpcomingSpecialEventsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Upcoming Special Events'),
        ),
    body: Center(
      child: Text('This is the Upcoming Special Events page', style: TextStyle(fontSize: 24.0),),
    ),
  );
  }
}
