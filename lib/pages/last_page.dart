import 'package:flutter/material.dart';

class LastPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Column(
          children: [
            Row(
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Mangcoding",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
