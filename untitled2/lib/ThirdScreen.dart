import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  final List<Map<String, String>> users = [
    {
      'name': 'John Doe',
      'email': 'johndoe@example.com',
    },
    {
      'name': 'Jane Smith',
      'email': 'janesmith@example.com',
    },
    {
      'name': 'Alice Johnson',
      'email': 'alicejohnson@example.com',
    },
    {
      'name': 'Bob Williams',
      'email': 'bobwilliams@example.com',
    },
    {
      'name': 'Emily Brown',
      'email': 'emilybrown@example.com',
    },
    {
      'name': 'Michael Davis',
      'email': 'michaeldavis@example.com',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layar Ketiga'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(users[index]['name']!),
            subtitle: Text(users[index]['email']!),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
