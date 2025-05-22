import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.orange),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Account'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Name',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 4),
            const Text(
              'Lorem Ipsum',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 32),
            const Text(
              'Contact',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 4),
            const Text(
              '1234567890',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 32),
            const Text(
              'Email',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 4),
            const Text(
              'lorem@mail.com',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 32),
            const Text(
              'DOB',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 4),
            const Text(
              '13-05-25',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(height: 32),
            const Text(
              'Address',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            const SizedBox(height: 4),
            const Text(
              'Lorem Ipsum Lorem Ipsum Lorem Ipsum',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}