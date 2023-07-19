import 'package:flutter/material.dart';
import 'package:flutter_application_1/audio_player.dart';
import 'package:flutter_application_1/image_screen.dart';
import 'package:flutter_application_1/pdf_view.dart';
import 'package:flutter_application_1/video_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/image': (context) => ImageScreen(),
        '/video': (context) => VideoScreen(),
        // '/pdf': (context) => PdfScreen(),
        '/audio': (context) => AudioScreen(),
        // '/webview': (context) => WebViewScreen(),
        // '/widgetA': (context) => WidgetA(),
        // '/profile': (context) => ProfileScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/image');
              },
              child: Text('Display Image'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/video');
              },
              child: Text('Play Video'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/pdf');
            //   },
            //   child: Text('Show PDF'),
            // ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/audio');
              },
              child: Text('Play Audio'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/webview');
            //   },
            //   child: Text('Open WebView'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/widgetA');
            //   },
            //   child: Text('Navigate to Widget A'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, '/profile');
            //   },
            //   child: Text('Create User Profile'),
            // ),
          ],
        ),
      ),
    );
  }
}
