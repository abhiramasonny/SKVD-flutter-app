import 'package:flutter/material.dart';

class TodayPanchangaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Today’s Panchanga'),
        ),
    body: Center(
      child: Text('This is Today’s Panchanga page', style: TextStyle(fontSize: 24.0),),
    ),
  );
  }
}
