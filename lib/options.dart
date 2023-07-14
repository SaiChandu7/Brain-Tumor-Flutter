import 'package:flutter/material.dart';
class OptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Brain Hemorrhage Classifier', style: TextStyle(fontSize: 16,color: Colors.black87),)),
        backgroundColor: Color(0xFFC0B7FF),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushNamed(context,'login');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Choose Image/Video to Upload",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 50),
            Container(
              height: 80,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFC0B7FF),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'imageupload');
                },
                child: Text('Upload Image',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ),
            SizedBox(height: 50),
            Container(
              height: 80,
              width: 200,
              child:ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFC0B7FF),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'videoupload2');
                },
                child: Text('Upload Video',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}