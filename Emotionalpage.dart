import 'package:flutter/material.dart';

class Emotional extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //remove appbar back buttom
        title: Text('Emotional'),
        centerTitle: true,
        backgroundColor: Colors.red,


      ),

    );
  }
}