import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

//Photo Diary Section

class PhotoDiary extends StatefulWidget{
  @override
  _PhotoDiaryState createState() =>_PhotoDiaryState();

}

class _PhotoDiaryState extends State<PhotoDiary> {
  File imageFile;

  //Define Method:
  _openGallery(BuildContext context) async {
    var picture  = await ImagePicker.pickImage(source: ImageSource.gallery);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();

  }

  _openCamera(BuildContext context)async{
    var picture  = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }


  // ignore: non_constant_identifier_names
  Future<void> _showChoiceDialog(BuildContext,context){
    return showDialog(context: context,builder:(BuildContext context){
      return AlertDialog(
        title: Text('Select'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget> [
              GestureDetector(
                child: Text('Gallery'),
                onTap:() {
                  _openGallery(context);
                },
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              GestureDetector(
                child: Text('Camera') ,
                onTap:(){
                  _openCamera(context);
                },
              )
            ],
          ),
        ),
      );
    });
  }
  //--------------------------------------------------------------
  Widget _decideImageView(){
    if(imageFile == null){
      return Text('No Image Selected');

    } else{
      Image.file(imageFile,width: 400,height: 400,);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo Diary'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Image.file(imageFile,width: 4000,height:400,),
              RaisedButton(onPressed: (){
                _showChoiceDialog(context);
              }, child: Text('Select Image'),
              )
            ],
          ),
        ),
      ),


    );
  }
}









