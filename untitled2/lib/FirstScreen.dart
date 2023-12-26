import 'package:flutter/material.dart';
import 'SecondScreen.dart';

class FirstScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController sentenceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layar Pertama'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Nama',
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              controller: sentenceController,
              decoration: InputDecoration(
                labelText: 'Kalimat',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                bool isPalindrome =
                    checkPalindrome(sentenceController.text.toLowerCase());
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Hasil'),
                      content: Text(
                          isPalindrome ? 'Palindrome' : 'Bukan Palindrome'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Tutup'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Periksa'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                String inputName = nameController.text;
                if (inputName.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(userName: inputName),
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Error'),
                        content: Text('Masukkan nama terlebih dahulu!'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Tutup'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              child: Text('Berikutnya'),
            ),
          ],
        ),
      ),
    );
  }

  bool checkPalindrome(String text) {
    String sentence = text.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');
    String reversed = sentence.split('').reversed.join('');
    return sentence == reversed;
  }
}
