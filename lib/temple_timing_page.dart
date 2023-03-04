import 'package:flutter/material.dart';

class TempleTimingPage extends StatefulWidget {
  final Function toggleGoogleMapsButtonVisibility;
  const TempleTimingPage({Key? key, required this.toggleGoogleMapsButtonVisibility}) : super(key: key);
  @override
  _TempleTimingPageState createState() => _TempleTimingPageState();
}

class _TempleTimingPageState extends State<TempleTimingPage> {
  bool _isButtonVisible = true;

  void _toggleButtonVisibility() {
    setState(() {
      _isButtonVisible = !_isButtonVisible;
      widget.toggleGoogleMapsButtonVisibility();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temple Timing'),
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('This is the Temple Timing page', style: TextStyle(fontSize: 24.0),),
          SizedBox(height: 20.0),
          ElevatedButton(
          onPressed: _toggleButtonVisibility,
          child: Text(_isButtonVisible ? 'Hide Google Maps' : 'Show Google Maps'),
          ),
        ],
        ),
      ),
    );
  }
}
