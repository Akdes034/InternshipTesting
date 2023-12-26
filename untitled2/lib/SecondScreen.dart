import 'package:flutter/material.dart';
import 'ThirdScreen.dart';

class SecondScreen extends StatelessWidget {
  final String userName;

  SecondScreen({required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layar Kedua'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Nama: $userName',
            style: TextStyle(fontSize: 20.0),
          ),
          Expanded(
            child: SizedBox(), // Spacer untuk mendorong tombol ke bawah
          ),
          Center(
            child: OutlinedButton(
              onPressed: () {
                // Aksi ketika tombol ditekan
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.only(top: 10.0),
                minimumSize: Size(150, 50), // Menentukan ukuran tombol
              ),
              child: Text(
                'Choose User',
                style: TextStyle(fontSize: 20.0), // Atur ukuran teks
              ),
            )

          ),
        ],
      ),
    );
  }
}
