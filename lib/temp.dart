// // import 'dart:async';
// // import 'package:flutter/material.dart';
// // import 'package:file_picker/file_picker.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';
// // import 'dart:io';
// // import 'dart:typed_data';
// // import 'package:image_picker/image_picker.dart';
// //
// // class MyThome extends StatefulWidget {
// //   const MyThome({Key? key}) : super(key: key);
// //
// //   @override
// //   State<MyThome> createState() => _MyThomeState();
// // }
// //
// // class _MyThomeState extends State<MyThome> {
// //   String? result;
// //   final picker=ImagePicker();
// //   File? img;
// //   PickedFile? pickedFile;
// //   var url="http://10.0.2.2:5000/predict";
// //   Future pickImage() async{
// //     PickedFile? pickedFile=await picker.getImage(source: ImageSource.gallery,);
// //     setState(() {
// //       img=File(pickedFile!.path);
// //     });
// //   }
// //   upload()async
// //   {
// //     final request=http.MultipartRequest("POST",Uri.parse(url));
// //     final header={"Content_type": "multipart/form-data"};
// //     request.files.add(http.MultipartFile('fileup',img!.readAsBytes().asStream(),img!.lengthSync(),
// //         filename: img!.path.split('/').last));
// //     request.headers.addAll(header);
// //     final myRequest=await request.send();
// //     http.Response res=await http.Response.fromStream(myRequest);
// //     if(myRequest.statusCode==200){
// //       final resJson=jsonDecode(res.body);
// //       print("response here: $resJson");
// //       result=resJson['prediction'];
// //     }else
// //     {
// //       print("Error ${myRequest.statusCode}");
// //     }
// //
// //     setState(() {
// //
// //     });
// //
// //   }
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Predictor'),
// //         backgroundColor: Color.fromARGB(255, 58, 12, 119),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             ElevatedButton(
// //               onPressed: pickImage,
// //               child: Text('Select .wav file'),
// //               style: ElevatedButton.styleFrom(
// //                   backgroundColor: Color.fromARGB(255, 58, 12, 119)),
// //             ),
// //             SizedBox(height: 20),
// //             pickedFile!.path != null
// //                 ? Text('Selected file: $pickedFile!.path')
// //                 : Text('No file selected'),
// //             ElevatedButton(
// //               onPressed: () async {
// //                 await upload();
// //               },
// //               child: Text('Predict'),
// //               style: ElevatedButton.styleFrom(
// //                   backgroundColor: Color.fromARGB(255, 58, 12, 119)),
// //             ),
// //             result != '' ? Text('Prediction : $result') : Text('')
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'dart:io';
// import 'dart:typed_data';
// import 'package:image_picker/image_picker.dart';
//
// class MyThome extends StatefulWidget {
//   const MyThome({Key? key}) : super(key: key);
//
//   @override
//   State<MyThome> createState() => _MyThomeState();
// }
//
// class _MyThomeState extends State<MyThome> {
//   String? result;
//   final picker = ImagePicker();
//   File? img;
//   PickedFile? pickedFile;
//   var url = "http://10.0.2.2:5000/predict";
//
//   Future pickImage() async {
//     PickedFile? pickedFile = await picker.getImage(source: ImageSource.gallery);
//     setState(() {
//       img = File(pickedFile!.path);
//     });
//   }
//
//   upload() async {
//     final request = http.MultipartRequest("POST", Uri.parse(url));
//     final header = {"Content_type": "multipart/form-data"};
//     request.files.add(http.MultipartFile(
//       'fileup',
//       img!.readAsBytes().asStream(),
//       img!.lengthSync(),
//       filename: img!.path.split('/').last,
//     ));
//     request.headers.addAll(header);
//     final myRequest = await request.send();
//     http.Response res = await http.Response.fromStream(myRequest);
//     if (myRequest.statusCode == 200) {
//       final resJson = jsonDecode(res.body);
//       print("response here: $resJson");
//       result = resJson['prediction'];
//     } else {
//       print("Error ${myRequest.statusCode}");
//     }
//
//     setState(() {});
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Predictor'),
//         backgroundColor: Color.fromARGB(255, 58, 12, 119),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//               onPressed: pickImage,
              // child: Text('Select .wav file'),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Color.fromARGB(255, 58, 12, 119),
//               ),
//             ),
//             SizedBox(height: 20),
//             pickedFile?.path != null
//                 ? Text('Selected file: ${pickedFile!.path}')
//                 : Text('No file selected'),
//             ElevatedButton(
//               onPressed: () async {
//                 await upload();
//               },
//               child: Text('Predict'),
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Color.fromARGB(255, 58, 12, 119),
//               ),
//             ),
//             result != null && result != ''
//                 ? Text('Prediction: $result')
//                 : Text(''),
//           ],
//         ),
//       ),
//     );
//   }
// }
