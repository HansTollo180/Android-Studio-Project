
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

//https://www.youtube.com/watch?v=dSBRQUebo7g

class Physical extends StatefulWidget {
  Physical() : super();

  @override
  _PhysicalState createState() => _PhysicalState();
}

class _PhysicalState extends State<Physical>{
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/video/P1.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }



  //--------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, //remove appbar back buttom
        title: Text('Physical'),
        centerTitle: true,
        backgroundColor: Colors.red,


      ),
      body: FutureBuilder(
          future: _initializeVideoPlayerFuture,
          // ignore: missing_return
          builder: (context, snapshot){
            if (snapshot.connectionState == ConnectionState.done){
              return AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              );

            }
          }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            if (_controller.value.isPlaying){
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
      ),

    );
  }
}

