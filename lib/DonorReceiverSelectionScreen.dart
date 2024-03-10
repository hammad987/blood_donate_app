
import 'package:flutter/material.dart';

class DonorReceiverSelectionScreen extends StatelessWidget {
  const DonorReceiverSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Donor/Receiver Selection'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Please select if you want to be a Donor or a Receiver',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle selection as a Donor
                Navigator.pushNamed(context, '/display_details',
                    arguments: 'Donor');
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('I want to be a Donor'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Handle selection as a Receiver
                Navigator.pushNamed(context, '/display_details',
                    arguments: 'Receiver');
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('I want to be a Receiver'),
            ),
          ],
        ),
      ),
    );
  }
}