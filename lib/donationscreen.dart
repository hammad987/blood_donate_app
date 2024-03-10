
import 'package:flutter/material.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({super.key});

  @override
  _DonationScreenState createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  String selectedBloodGroup = 'A+';
  List<String> bloodGroups = ['A+', 'B+', 'AB+', 'O+', 'A-', 'B-', 'AB-', 'O-'];
  TextEditingController weightController = TextEditingController();
  TextEditingController bloodPhController = TextEditingController();
  TextEditingController cnicController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Donate Blood'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        // Wrap the Column with SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images.jpg',
                height: 120,
                width: 120,
              ),
              const SizedBox(height: 20),
              const Text(
                'Blood Donation Details',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField(
                value: selectedBloodGroup,
                items: bloodGroups.map((group) {
                  return DropdownMenuItem(
                    value: group,
                    child: Text(group),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedBloodGroup = value.toString();
                  });
                },
                decoration: const InputDecoration(labelText: 'Blood Group'),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: weightController,
                decoration: const InputDecoration(labelText: 'Weight (kg)'),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 15),
              TextField(
                controller: bloodPhController,
                decoration: const InputDecoration(labelText: 'Blood pH'),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: cnicController,
                decoration: const InputDecoration(labelText: 'CNIC'),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 15),
              TextField(
                controller: addressController,
                decoration: const InputDecoration(labelText: 'Address'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  submitDonation(context);
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: const Text('Submit Donation'),
              ),
            ],
          ),
        ),
      ),
    );
  }
void submitDonation(BuildContext context) {
    String weight = weightController.text;
    String bloodPh = bloodPhController.text;
    String cnic = cnicController.text;
    String address = addressController.text;

    print('Blood Group: $selectedBloodGroup');
    print('Weight: $weight kg');
    print('Blood pH: $bloodPh');
    print('CNIC: $cnic');
    print('Address: $address');

    Navigator.pushNamed(context, '/donor_receiver_selection');
  }
}
