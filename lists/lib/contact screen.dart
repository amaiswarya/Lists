import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  final String name;
  final String number;
  const Contact({Key? key, required this.name, required this.number})
      : super(key: key);

  @override
  State<Contact> createState() => _contactState();
}

class _contactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 210,
              width: 220,
              child: Image.network(
                  "https://www.kindpng.com/picc/m/495-4952535_create-digital-profile-icon-blue-user-profile-icon.png"),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  children: [const Text("Name  :"), Text(widget.name)],
                ),
                Row(
                  children: [const Text("Number  :"), Text(widget.number)],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
