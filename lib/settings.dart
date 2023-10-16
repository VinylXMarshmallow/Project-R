import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkModeEnabled = false; // Initial value for dark mode

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'General Settings',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text('Dark Mode'),
              trailing: Switch(
                value: isDarkModeEnabled,
                onChanged: (value) {
                  // Update the state variable and rebuild the widget
                  setState(() {
                    isDarkModeEnabled = value;
                  });

                  // Implement dark mode switch logic here
                  // You can use the `isDarkModeEnabled` variable to determine the mode.
                },
              ),
            ),
            Divider(),
            // Add more settings options as needed
          ],
        ),
      ),
    );
  }
}
