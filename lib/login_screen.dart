import 'package:app/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Strona wydarzenia'),
      ),
      body: WebView(
        initialUrl: 'https://remcon.pl', // Replace with your login page URL
        javascriptMode: JavascriptMode.unrestricted,
        onPageFinished: (String url) {
          // You can handle page navigation here if needed
          // For example, check if the user has successfully logged in
          if (url.contains('/success')) {
            // Navigate to the main app screen or perform other actions
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen()));
          }
        },
      ),
    );
  }
}
