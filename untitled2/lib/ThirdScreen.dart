import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  final List<Map<String, String>> users = [
    {
      'name': 'FirstName LastName',
      'email': 'EMAIL@EMAIL.COM',
    },
    {
      'name': 'FirstName LastName',
      'email': 'EMAIL@EMAIL.COM',
    },
    {
      'name': 'FirstName LastName',
      'email': 'EMAIL@EMAIL.COM',
    },
    {
      'name': 'FirstName LastName',
      'email': 'EMAIL@EMAIL.COM',
    },
    {
      'name': 'FirstName LastName',
      'email': 'EMAIL@EMAIL.COM',
    },
    {
      'name': 'FirstName LastName',
      'email': 'EMAIL@EMAIL.COM',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 0.5,
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            child: AppBar(
              title: _buildAppBarTitle(),
              centerTitle: true,
              elevation: 0,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: users.length * 2 - 1,
        itemBuilder: (BuildContext context, int index) {
          if (index.isOdd) {
            return Divider();
          }
          final itemIndex = index ~/ 2;
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'),
              radius: 20,
            ),
            title: Text(
              users[itemIndex]['name']!,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              users[itemIndex]['email']!,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.normal,
              ),
            ),
          );
        },
      ),
    );
  }
  Widget _buildAppBarTitle() {
    return Text(
      'Third Screen',
      style: TextStyle(
        fontSize: 20.0,
      ),
    );
  }
}
