import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'Physicalpage.dart';
import 'Emotionalpage.dart';
import 'PhotoDiarypage.dart';
import 'Morepage.dart';


//Reference: https://www.youtube.com/watch?v=elLkVWt7gRM&list=WL&index=1
//  Section Navigation



class Nav extends StatefulWidget{
  @override
  _NavState createState() => _NavState();
}
class _NavState extends State<Nav> {
  int _selectedIndex = 0; //index number start to 0
  List<Widget> _widgetOptions = <Widget>[
    Homepage(),
    Physical(),
    Emotional(),
    PhotoDiary(),
    More(),

  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(

        //Home
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.red
          ),

          //Physical
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection),
              title: Text('Physical') ,
              backgroundColor: Colors.red
          ),

          //Emotional
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection),
              title: Text('Emotional') ,

              backgroundColor: Colors.red
          ),

          //PhotoDiary
          BottomNavigationBarItem(
              icon: Icon(Icons.photo),
              title: Text('PhotoDiary') ,

              backgroundColor: Colors.red
          ),

          //More
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('More') ,
              backgroundColor: Colors.red
          ),
        ],
        currentIndex:_selectedIndex,
        onTap: _onItemTap,
       ),

    );
  }

}

