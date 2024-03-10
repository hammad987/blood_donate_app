
import 'package:flutter/material.dart';

class DisplayDetailsScreen extends StatelessWidget {
  const DisplayDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String role = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('$role Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Displaying $role Details',
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            // Display other details here based on the role
          ],
        ),
      ),
    );
  }
}