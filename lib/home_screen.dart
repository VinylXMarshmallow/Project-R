import 'package:app/settings.dart';
import 'login_screen.dart';
import 'package:flutter/material.dart';
import 'second_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home Screen'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: Text('Where Am I?'), // Updated menu item text
                onTap: () {
                  // Navigate to the second screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SecondScreen()), // Use the SecondScreen widget
                  );
                },
              ),
              ListTile(
                title: Text('Settings'),
                onTap: () {
                  // Navigate to the second screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SettingsScreen()), // Use the SecondScreen widget
                  );
                },
              ),
              ListTile(
                  title: Text('Strona wydarzenia'),
                  onTap: () {
                    // Navigate to the login screen
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  }),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Content for Tab 1
            Center(
              child: Text('Home Screen'),
            ),
            // Content for Tab 2 (Web View)
            Center(
              child: Text('Tab 2'),
            ),

            // Content for Tab 3
            Center(
              child: Text('Tab 3 Content'),
            ),
          ],
        ),
      ),
    );
  }
}
