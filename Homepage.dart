import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //remove appbar back buttom
        title: Text('Corpus Christi'),
        centerTitle: true,
        backgroundColor: Colors.red,


      ),

      //Selected School Logo
      body: Center(
            child: Image.asset('assets/school/Corpus Christi Red.JPG'),

        ),


    );

  }

}