import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.blue,
        ),
        title: Text(
          'Vesu,Surat,Gujarat ',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                '🪙 599',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.notifications,
            color: Colors.blue,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Center(
        child: Text('No Any News Here'),
      ),
    );
  }
}
