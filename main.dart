import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  void _showNotification(BuildContext context) {
    String currentTime = TimeOfDay.now().format(context);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Notifikasi"),
        content: Text("Anda menekan tombol pada waktu $currentTime"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Local Notification")),
      body: Center(child: Text("Tekan tombol di bawah untuk notifikasi.")),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showNotification(context),
        child: Icon(Icons.notifications),
      ),
    );
  }
}
