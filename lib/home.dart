// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
// // import 'packages:http/http.dart' as http;
// import 'package:http/http.dart' as http;
//
//
//
// class ImagePickerWidget extends StatefulWidget {
//   final Function(File? image) onImageSelected;
//
//   ImagePickerWidget({required this.onImageSelected});
//   @override
//   _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
// }
//
// class _ImagePickerWidgetState extends State<ImagePickerWidget> {
//   File? _image;
//   String? _imageName;
//
//   Future _pickImage() async {
//     final picker = ImagePicker();
//     final pickedImage = await picker.getImage(source: ImageSource.gallery);
//
//     setState(() {
//       if (pickedImage != null) {
//         _image = File(pickedImage.path);
//         _imageName = pickedImage.path.split('/').last;
//         widget.onImageSelected(_image); // Call the callback function
//       } else {
//         print('No image selected.');
//       }
//     });
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         ElevatedButton(
//           onPressed: _pickImage,
//           child: Text('Pick Image'),
//         ),
//         SizedBox(height: 16.0),
//         _image != null
//             ? Column(
//           children: [
//             Container(
//               width: 300.0, // Adjust the width as desired
//               height: 300.0, // Adjust the height as desired
//               child: Image.file(
//                 _image!,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             SizedBox(height: 8.0),
//             Text('Image Name: $_imageName'),
//           ],
//         )
//             : Text('No image selected.'),
//       ],
//     );
//   }
// }
//
//
// class MyHome extends StatefulWidget {
//   @override
//   _MyHomeState createState() => _MyHomeState();
// }
//
// class _MyHomeState extends State<MyHome> {
//   File? _selectedImage;
//   String prediction ="";
//   void _handleImageSelected(File? image) {
//     setState(() {
//       _selectedImage = File(image!.path);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Brain Hemorrhage Classifier',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Brain Hemorrhage Classifier'),
//           centerTitle: true,
//           actions:<Widget> [
//             IconButton(onPressed:(){Navigator.pushNamed(context, 'login');} , icon: const Icon(Icons.logout), )
//           ],
//         ),
//         body: SingleChildScrollView(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(height:30),
//                 Text("Enter an Image",
//                   style: TextStyle(
//                     fontWeight:FontWeight.bold,
//                   ),
//                 ),
//                 ImagePickerWidget(onImageSelected: _handleImageSelected),
//
//                 SizedBox(height: 16.0),
//                 ElevatedButton(
//                   onPressed: () async {
//
//                     if (_selectedImage != null) {
//                       // Create a multipart request
//                       var request = http.MultipartRequest('POST', Uri.parse('http://43.205.113.142/predict'));
//
//                       // Add the image file to the request
//                       request.files.add(await http.MultipartFile.fromPath('image', _selectedImage!.path));
//
//                       // Send the request and get the response
//                       var response = await request.send();
//
//                       // Check if the request was successful
//                       if (response.statusCode == 200) {
//                         // Parse the response JSON
//                         var jsonResponse = await response.stream.bytesToString();
//                         // Do something with the response data
//                         setState(() {
//                           prediction=jsonResponse;
//                         });
//                         print(jsonResponse);
//                       } else {
//                         print('Request failed with status: ${response.statusCode}');
//                       }
//                     } else {
//                       print('No image selected.');
//                     }
//                   },
//                   child: Text('Predict'),
//                 ),
//                  SizedBox(height: 20),
//                  prediction == "Normal" ? Text('$prediction',
//                  style:TextStyle(
//                    fontWeight: FontWeight.bold,
//                    color: Colors.green,
//                    fontSize: 30,
//                  )):Text('$prediction',
//                    style:TextStyle(
//                      fontWeight: FontWeight.bold,
//                      color: Colors.red,
//                      fontSize: 30,
//                  ),),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
// // import 'dart:io';
// //
// // import 'package:flutter/material.dart';
// // import 'package:image_picker/image_picker.dart';
// // import 'package:http/http.dart' as http;
// //
// // class ImagePickerWidget extends StatefulWidget {
// //   final Function(File? image) onImageSelected;
// //
// //   ImagePickerWidget({required this.onImageSelected});
// //
// //   @override
// //   _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
// // }
// //
// // class _ImagePickerWidgetState extends State<ImagePickerWidget> {
// //   File? _image;
// //   String? _imageName;
// //
// //   Future _pickImage() async {
// //     final picker = ImagePicker();
// //     final pickedImage = await picker.getImage(source: ImageSource.gallery);
// //
// //     setState(() {
// //       if (pickedImage != null) {
// //         _image = File(pickedImage.path);
// //         _imageName = pickedImage.path.split('/').last;
// //         widget.onImageSelected(_image); // Call the callback function
// //       } else {
// //         print('No image selected.');
// //       }
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: <Widget>[
// //         ElevatedButton(
// //           onPressed: _pickImage,
// //           child: Text('Pick Image'),
// //         ),
// //         SizedBox(height: 16.0),
// //         _image != null
// //             ? Column(
// //           children: [
// //             Image.file(_image!),
// //             SizedBox(height: 8.0),
// //             Text('Image Name: $_imageName'),
// //           ],
// //         )
// //             : Text('No image selected.'),
// //       ],
// //     );
// //   }
// // }
// //
// // class MyHome extends StatefulWidget {
// //   @override
// //   _MyHomeState createState() => _MyHomeState();
// // }
// //
// // class _MyHomeState extends State<MyHome> {
// //   File? _selectedImage;
// //
// //   void _handleImageSelected(File? image) {
// //     setState(() {
// //       _selectedImage = image;
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Image Picker Demo',
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text('Image Picker Demo'),
// //         ),
// //         body: SingleChildScrollView(
// //           child: Center(
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Text("Enter an Image"),
// //                 ImagePickerWidget(onImageSelected: _handleImageSelected),
// //                 SizedBox(height: 16.0),
// //                 ElevatedButton(
// //                   onPressed: () async {
// //                     if (_selectedImage != null) {
// //                       // Create a multipart request
// //                       final url =
// //                           "http://10.0.2.2:5000/predict";
// //                       var request = http.MultipartRequest('POST', Uri.parse(url));
// //
// //                       // Add the image file to the request
// //                       request.files.add(await http.MultipartFile.fromPath('image', _selectedImage!.path));
// //
// //                       // Send the request and get the response
// //                       var response = await request.send();
// //
// //                       // Check if the request was successful
// //                       if (response.statusCode == 200) {
// //                         // Parse the response JSON
// //                         var jsonResponse = await response.stream.bytesToString();
// //                         // Do something with the response data
// //                         print(jsonResponse);
// //                       } else {
// //                         print('Request failed with status: ${response.statusCode}');
// //                       }
// //                     }
// //                     else {
// //                       print('No image selected.');
// //                     }
// //                   },
// //                   child: Text('Predict'),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
// /*
// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:http/http.dart' as http;
//
// class ImagePickerWidget extends StatefulWidget {
//   final Function(File? image) onImageSelected;
//
//   ImagePickerWidget({required this.onImageSelected});
//
//   @override
//   _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
// }
//
// class _ImagePickerWidgetState extends State<ImagePickerWidget> {
//   File? _image;
//   String? _imageName;
//
//   Future _pickImage() async {
//     final picker = ImagePicker();
//     final pickedImage = await picker.getImage(source: ImageSource.gallery);
//
//     setState(() {
//       if (pickedImage != null) {
//         _image = File(pickedImage.path);
//         _imageName = pickedImage.path.split('/').last;
//         widget.onImageSelected(_image); // Call the callback function
//       } else {
//         print('No image selected.');
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         ElevatedButton(
//           onPressed: _pickImage,
//           child: Text('Pick Image'),
//         ),
//         SizedBox(height: 16.0),
//         _image != null
//             ? Column(
//           children: [
//             Image.file(_image!),
//             SizedBox(height: 8.0),
//             Text('Image Name: $_imageName'),
//           ],
//         )
//             : Text('No image selected.'),
//       ],
//     );
//   }
// }
//
// class MyHome extends StatefulWidget {
//   @override
//   _MyHomeState createState() => _MyHomeState();
// }
//
// class _MyHomeState extends State<MyHome> {
//   File? _selectedImage;
//
//   void _handleImageSelected(File? image) {
//     setState(() {
//       _selectedImage = image;
//     });
//   }
//
//   Future<void> sendPredictionRequest() async {
//     if (_selectedImage != null) {
//       try {
//         // Create a multipart request
//         final url = "http://172.16.20.48:5000/predict";
//         var request = http.MultipartRequest('POST', Uri.parse(url));
//
//         // Add the image file to the request
//         request.files.add(await http.MultipartFile.fromPath('image', _selectedImage!.path));
//
//         // Send the request and get the response
//         var response = await request.send();
//
//         // Check if the request was successful
//         if (response.statusCode == 200) {
//           // Parse the response JSON
//           var jsonResponse = await response.stream.bytesToString();
//           // Do something with the response data
//           print(jsonResponse);
//         } else {
//           print('Request failed with status: ${response.statusCode}');
//         }
//       } catch (e) {
//         print('Error occurred: $e');
//       }
//     } else {
//       print('No image selected.');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Image Picker Demo',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Image Picker Demo'),
//         ),
//         body: SingleChildScrollView(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text("Enter an Image"),
//                 ImagePickerWidget(onImageSelected: _handleImageSelected),
//                 SizedBox(height: 16.0),
//                 ElevatedButton(
//                   onPressed: sendPredictionRequest,
//                   child: Text('Predict'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// */
//
//
