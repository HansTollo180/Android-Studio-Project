import 'package:flutter/material.dart';

class More extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //remove appbar back buttom
        title: Text('More'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
    );
  }
}
class Bibliography extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: RaisedButton(
        onPressed: (){
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                builder: (context)=>Page1()
                  )
              );
        },
      ),),

    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bibliography'),
      ),
    );
  }
}
