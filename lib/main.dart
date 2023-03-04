import 'package:flutter/material.dart';

import 'today_panchanga_page.dart';
import 'temple_timing_page.dart';
import 'upcoming_special_events_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isGoogleMapsButtonVisible = false;

  void _toggleGoogleMapsButtonVisibility() {
    setState(() {
      _isGoogleMapsButtonVisible = !_isGoogleMapsButtonVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.orange, // set the background color here
      appBar: AppBar(
        title: Text('SKVD'),
        // Add hamburger menu button to app bar
        leading: IconButton(
          icon: Image.asset('assets/images/menu.png'),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('SKVD Puthiage Matha'),
            ),
            ListTile(
              title: Text('Today’s Panchanga'),
              onTap: () {
                // Add functionality for option 1 here
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => TodayPanchangaPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Temple Timing'),
              onTap: () {
                // Add functionality for option 2 here
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => TempleTimingPage(
                      toggleGoogleMapsButtonVisibility:
                          _toggleGoogleMapsButtonVisibility,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Upcoming Special Events'),
              onTap: () {
                // Add functionality for option 3 here
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        UpcomingSpecialEventsPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/Header.png'),
          if (_isGoogleMapsButtonVisible)
            ElevatedButton(
              onPressed: () {},
              child: Text('Open in Google Maps'),
            ),
          Container(
            width: double.infinity,
            child: Center(
              child: Text(
                'Welcome to SKVD Puthiage Matha',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
