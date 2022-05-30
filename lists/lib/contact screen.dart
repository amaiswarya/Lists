import 'package:flutter/material.dart';

class contact extends StatefulWidget {
  const contact({Key? key}) : super(key: key);

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
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
            Row(
              children: const [Text("")],
            )
          ],
        ),
      ),
    );
  }
}
