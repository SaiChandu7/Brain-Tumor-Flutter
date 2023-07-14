// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
// class MyRegister extends StatefulWidget {
//   const MyRegister({Key? key}) : super(key: key);
//
//   @override
//   _MyRegisterState createState() => _MyRegisterState();
// }
//
// class _MyRegisterState extends State<MyRegister> {
//   @override
//   Widget build(BuildContext context) {
//     String email='',pass='';
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//             image: AssetImage('assets/register4.webp'), fit: BoxFit.cover),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//         ),
//         body: Stack(
//           children: [
//             Container(
//               padding: EdgeInsets.only(left: 35, top: 30),
//               child: Text(
//                 'Create\nAccount',
//                 style: TextStyle(color: Colors.white, fontSize: 33),
//               ),
//             ),
//             SingleChildScrollView(
//               child: Container(
//                 padding: EdgeInsets.only(
//                     top: MediaQuery.of(context).size.height * 0.28),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(left: 35, right: 35),
//                       child: Column(
//                         children: [
//                           TextField(
//                             style: TextStyle(color: Colors.white),
//                             decoration: InputDecoration(
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 hintText: "Name",
//                                 hintStyle: TextStyle(color: Colors.white),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 )),
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           TextField(
//                             onChanged: (value){
//                               email=value;
//                             },
//                             style: TextStyle(color: Colors.white),
//                             decoration: InputDecoration(
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 hintText: "Email",
//                                 hintStyle: TextStyle(color: Colors.white),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 )),
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           TextField(
//                             onChanged: (value){
//                               pass=value;
//                             },
//                             style: TextStyle(color: Colors.white),
//                             obscureText: true,
//                             decoration: InputDecoration(
//                                 enabledBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                                 hintText: "Password",
//                                 hintStyle: TextStyle(color: Colors.white),
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 )),
//                           ),
//                           SizedBox(
//                             height: 40,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 'Sign Up',
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 27,
//                                     fontWeight: FontWeight.w700),
//                               ),
//                               CircleAvatar(
//                                 radius: 30,
//                                 backgroundColor: Color(0xff4c505b),
//                                 child: IconButton(
//                                     color: Colors.white,
//                                     onPressed: () async {
//                                       try {
//                                         UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//                                             email: email,
//                                             password: pass
//                                         );
//                                         Navigator.pushNamed(context,'login');
//                                       } on FirebaseAuthException catch (e) {
//                                         if (e.code == 'weak-password') {
//                                           print('The password provided is too weak.');
//                                         } else if (e.code == 'email-already-in-use') {
//                                           print('The account already exists for that email.');
//                                         }
//                                       } catch (e) {
//                                         print(e);
//                                       }
//                                     },
//                                     icon: Icon(
//                                       Icons.arrow_forward,
//                                     )),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             height: 40,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               TextButton(
//                                 onPressed: () {
//                                   Navigator.pushNamed(context, 'login');
//                                 },
//                                 child: Text(
//                                   'Sign In',
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(
//                                       decoration: TextDecoration.underline,
//                                       color: Colors.white,
//                                       fontSize: 18),
//                                 ),
//                                 style: ButtonStyle(),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:classico/login.dart';
// import 'package:classico/usermodel.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:email_otp/email_otp.dart';
// import 'package:classico/emailotp.dart';
// import 'package:classico/login.dart';
// import 'package:classico/phone.dart';
// import 'package:classico/otp.dart';
// import 'package:classico/usermodel.dart';
//
// class MyRegister extends StatefulWidget {
//   const MyRegister({super.key});
//
//   @override
//   State<MyRegister> createState() => _MyRegisterState();
// }
//
// class _MyRegisterState extends State<MyRegister> {
//   final _formkey = GlobalKey<FormState>();
//   final _auth = FirebaseAuth.instance;
//   final NameEditingController = new TextEditingController();
//   final emailEditingController = new TextEditingController();
//   final passwordEditingController = new TextEditingController();
//   final confirmpasswordEditingController = new TextEditingController();
//   final phonenumberEditingController = new TextEditingController();
//   var _isObscured1 = true;
//   var _isObscured2 = true;
//   @override
//   void initState() {
//     _isObscured1 = true;
//     _isObscured2 = true;
//   }
//
//   Widget build(BuildContext context) {
//     //FirstName Field
//     final firstnameField = TextFormField(
//       autofocus: false,
//       controller: NameEditingController,
//       keyboardType: TextInputType.name,
//       validator: (value) {
//         RegExp regex = new RegExp(r'^.{3,}$');
//         if (value!.isEmpty) {
//           return ("Name cannot be Empty");
//         }
//         if (!regex.hasMatch(value)) {
//           return ("Please enter valid Name(Min 3 Character)");
//         }
//         return null;
//       },
//       onSaved: (value) {
//         NameEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         prefixIcon: Icon(Icons.account_circle),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "Name",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//
//     final emailField = TextFormField(
//       autofocus: false,
//       controller: emailEditingController,
//       keyboardType: TextInputType.emailAddress,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return ("Please Enter Your Email");
//         }
//         if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
//           return ("Please Enter a valid email");
//         }
//         return null;
//       },
//       onSaved: (value) {
//         emailEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         prefixIcon: Icon(Icons.mail),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "Email",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//
//     final phoneField = TextFormField(
//       autofocus: false,
//       controller: phonenumberEditingController,
//       keyboardType: TextInputType.phone,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return ("Please Enter Phone Number");
//         }
//         return null;
//       },
//       onSaved: (value) {
//         phonenumberEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         prefixIcon: Icon(Icons.phone),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "Phone Number",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//     //_isObscured1=true;
//     final passwordfield = TextFormField(
//       autofocus: false,
//       controller: passwordEditingController,
//       obscureText: _isObscured1,
//       validator: (value) {
//         RegExp regex = new RegExp(r'^.{6,}$');
//         if (value!.isEmpty) {
//           return ("Password is required for login");
//         }
//         if (!regex.hasMatch(value)) {
//           return ("Please enter valid Password(Min 6 Character)");
//         }
//       },
//       onSaved: (value) {
//         passwordEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         prefixIcon: Icon(Icons.vpn_key),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         suffixIcon: IconButton(
//             padding: const EdgeInsetsDirectional.only(end: 12.0),
//             icon: _isObscured1
//                 ? const Icon(Icons.visibility)
//                 : const Icon(Icons.visibility_off),
//             onPressed: () {
//               setState(() {
//                 _isObscured1 = !_isObscured1;
//               });
//             }),
//         hintText: "Password",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//     //_isObscured2=true;
//     final confirmPasswordField = TextFormField(
//       autofocus: false,
//       controller: confirmpasswordEditingController,
//       obscureText: _isObscured2,
//       validator: (value) {
//         if (confirmpasswordEditingController.text !=
//             passwordEditingController.text) {
//           return "Password don't match";
//         }
//         return null;
//       },
//       onSaved: (value) {
//         confirmpasswordEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.done,
//       decoration: InputDecoration(
//         prefixIcon: Icon(Icons.vpn_key),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         suffixIcon: IconButton(
//             padding: const EdgeInsetsDirectional.only(end: 12.0),
//             icon: _isObscured2
//                 ? const Icon(Icons.visibility)
//                 : const Icon(Icons.visibility_off),
//             onPressed: () {
//               setState(() {
//                 _isObscured2 = !_isObscured2;
//               });
//             }),
//         hintText: "Confirm Password",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//
//     //SignUp Button
//     final SignUpButton = Material(
//       elevation: 5,
//       borderRadius: BorderRadius.circular(30),
//       color: Colors.red.shade400,
//       child: MaterialButton(
//           padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//           minWidth: MediaQuery.of(context).size.width,
//           onPressed: () {
//             SignUp(emailEditingController.text, passwordEditingController.text);
//           },
//           child: Text(
//             "Register",
//             textAlign: TextAlign.center,
//             style: TextStyle(
//                 fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
//           )),
//     );
//
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: null,
//       body: Center(
//         child: SingleChildScrollView(
//           child: Container(
//             color: Colors.white,
//             child: Padding(
//               padding: const EdgeInsets.all(36.0),
//               child: Form(
//                 key: _formkey,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     // SizedBox(
//                     //     height: 125,
//                     //     child: Image.asset(
//                     //       "assets/MainLogo.png",
//                     //       fit: BoxFit.contain,
//                     //     )),
//                     SizedBox(height: 45),
//                     firstnameField,
//                     SizedBox(height: 20),
//                     emailField,
//                     SizedBox(height: 20),
//                     phoneField,
//                     SizedBox(height: 20),
//                     passwordfield,
//                     SizedBox(height: 20),
//                     confirmPasswordField,
//                     SizedBox(height: 20),
//                     SignUpButton,
//                     SizedBox(height: 15),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   void SignUp(String email, String password) async {
//     if (_formkey.currentState!.validate()) {
//       await _auth
//           .createUserWithEmailAndPassword(email: email, password: password)
//           .then((value) {
//         sendEmailVerification(); // Send email verification
//         postDetailsToFireStore(); // Navigate to phone verification page
//         Fluttertoast.showToast(msg: "Account Created successfully");
//       }).catchError((e) {
//         Fluttertoast.showToast(msg: e!.message);
//       });
//     }
//   }
//
//   /*void SignUp(String email, String password) async {
//     if (_formkey.currentState!.validate()) {
//       await _auth
//           .createUserWithEmailAndPassword(email: email, password: password)
//           .then((value) => {
//                 postDetailsToFireStore(),
//               })
//           .catchError((e) {
//         Fluttertoast.showToast(msg: e!.message);
//
//       });
//     }
//   }
//   void SignUp(String email, String password) async {
//     if (_formkey.currentState!.validate()) {
//       await _auth
//           .createUserWithEmailAndPassword(email: email, password: password)
//           .then((value) {
//         postDetailsToFireStore();
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => MyEmail()),
//         );
//       }).catchError((e) {
//         Fluttertoast.showToast(msg: e!.message);
//       });
//     }
//   } */
// /*
//   postDetailsToFireStore() async {
//     //Calling our firestore
//     //calling our user model
//     FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
//     User? user = _auth.currentUser;
//
//     UserModel userModel = UserModel();
//
//     userModel.email = user!.email;
//     userModel.uid = user!.uid;
//     userModel.phonenumber= phonenumberEditingController.text;
//     userModel.Name = NameEditingController.text;
//     await firebaseFirestore
//         .collection("users")
//         .doc(user.uid)
//         .set(userModel.toMap());
//     Fluttertoast.showToast(msg: "Account Created successfully");
//     /* Navigator.pushAndRemoveUntil(
//         context,
//        // MaterialPageRoute(builder: (context) => HomeScreen()),
//         //(route) => false); */
//     Navigator.pushNamed(context, 'login');
//   }
//   */
//   postDetailsToFireStore() async {
//     // Calling our firestore
//     // Calling our user model
//     FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
//     User? user = _auth.currentUser;
//
//     UserModel userModel = UserModel();
//
//     userModel.email = user!.email;
//     userModel.uid = user!.uid;
//     userModel.phonenumber = phonenumberEditingController.text;
//     userModel.Name = NameEditingController.text;
//     await firebaseFirestore
//         .collection("users")
//         .doc(user.uid)
//         .set(userModel.toMap());
//
//     // Navigate back to the previous screen (RegisterPage)
//   }
//
//   void sendEmailVerification() async {
//     //User? user = _auth.currentUser;
//
//     // await user!.sendEmailVerification();
//     // Fluttertoast.showToast(msg: "Verification email sent. Please verify your email.");
//
//     // Navigate to the EmailVerificationPage after sending the verification email
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => MyLogin()),
//     );
//   }
// }








// import 'package:classico/login.dart';
// import 'package:classico/usermodel.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:email_otp/email_otp.dart';
// import 'package:classico/emailotp.dart';
// import 'package:classico/login.dart';
// import 'package:classico/phone.dart';
// import 'package:classico/otp.dart';
// import 'package:classico/usermodel.dart';
//
// class MyRegister extends StatefulWidget {
//   const MyRegister({Key? key}) : super(key: key);
//
//   @override
//   State<MyRegister> createState() => _MyRegisterState();
// }
//
// class _MyRegisterState extends State<MyRegister> {
//   final _formkey = GlobalKey<FormState>();
//   final _auth = FirebaseAuth.instance;
//   final NameEditingController = TextEditingController();
//   final emailEditingController = TextEditingController();
//   final passwordEditingController = TextEditingController();
//   final confirmpasswordEditingController = TextEditingController();
//   final phonenumberEditingController = TextEditingController();
//   var _isObscured1 = true;
//   var _isObscured2 = true;
//
//   @override
//   void initState() {
//     _isObscured1 = true;
//     _isObscured2 = true;
//     super.initState();
//   }
//
//   Widget build(BuildContext context) {
//     //FirstName Field
//     final firstnameField = TextFormField(
//       autofocus: false,
//       controller: NameEditingController,
//       keyboardType: TextInputType.name,
//       validator: (value) {
//         RegExp regex = new RegExp(r'^.{3,}$');
//         if (value!.isEmpty) {
//           return ("Name cannot be Empty");
//         }
//         if (!regex.hasMatch(value)) {
//           return ("Please enter valid Name (Min 3 Characters)");
//         }
//         return null;
//       },
//       onSaved: (value) {
//         NameEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         prefixIcon: Icon(Icons.account_circle),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "Name",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//
//     final emailField = TextFormField(
//       autofocus: false,
//       controller: emailEditingController,
//       keyboardType: TextInputType.emailAddress,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return ("Please Enter Your Email");
//         }
//         if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
//           return ("Please Enter a valid email");
//         }
//         return null;
//       },
//       onSaved: (value) {
//         emailEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         prefixIcon: Icon(Icons.mail),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "Email",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//
//     final phoneField = TextFormField(
//       autofocus: false,
//       controller: phonenumberEditingController,
//       keyboardType: TextInputType.phone,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return ("Please Enter Phone Number");
//         }
//         return null;
//       },
//       onSaved: (value) {
//         phonenumberEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         prefixIcon: Icon(Icons.phone),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "Phone Number",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//
//     final passwordfield = TextFormField(
//       autofocus: false,
//       controller: passwordEditingController,
//       obscureText: _isObscured1,
//       validator: (value) {
//         RegExp regex = new RegExp(r'^.{6,}$');
//         if (value!.isEmpty) {
//           return ("Password is required for login");
//         }
//         if (!regex.hasMatch(value)) {
//           return ("Please enter a valid Password (Min 6 Characters)");
//         }
//         return null;
//       },
//       onSaved: (value) {
//         passwordEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         prefixIcon: Icon(Icons.vpn_key),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         suffixIcon: IconButton(
//           padding: const EdgeInsetsDirectional.only(end: 12.0),
//           icon: _isObscured1
//               ? const Icon(Icons.visibility)
//               : const Icon(Icons.visibility_off),
//           onPressed: () {
//             setState(() {
//               _isObscured1 = !_isObscured1;
//             });
//           },
//         ),
//         hintText: "Password",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//
//     final confirmPasswordField = TextFormField(
//       autofocus: false,
//       controller: confirmpasswordEditingController,
//       obscureText: _isObscured2,
//       validator: (value) {
//         if (confirmpasswordEditingController.text !=
//             passwordEditingController.text) {
//           return "Passwords don't match";
//         }
//         return null;
//       },
//       onSaved: (value) {
//         confirmpasswordEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.done,
//       decoration: InputDecoration(
//         prefixIcon: Icon(Icons.vpn_key),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         suffixIcon: IconButton(
//           padding: const EdgeInsetsDirectional.only(end: 12.0),
//           icon: _isObscured2
//               ? const Icon(Icons.visibility)
//               : const Icon(Icons.visibility_off),
//           onPressed: () {
//             setState(() {
//               _isObscured2 = !_isObscured2;
//             });
//           },
//         ),
//         hintText: "Confirm Password",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//
//     final SignUpButton = Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "SignUp",
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(width: 170),
//             CircleAvatar(
//               radius: 25,
//               backgroundColor: Colors.red.shade400,
//               child: IconButton(
//                 icon: Icon(
//                   Icons.arrow_forward,
//                   color: Colors.white,
//                 ),
//                 onPressed: () {
//                   SignUp(emailEditingController.text, passwordEditingController.text);
//                 },
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: 20),
//         GestureDetector(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => MyLogin()),
//             );
//           },
//           child: Text(
//             "Already existing user? Login",
//             style: TextStyle(
//               fontSize: 16,
//               color: Colors.black,
//               decoration: TextDecoration.underline,
//             ),
//           ),
//         ),
//       ],
//     );
//
//
//
//
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: null,
//       body: Center(
//         child: SingleChildScrollView(
//           child: Container(
//             color: Colors.white,
//             child: Padding(
//               padding: const EdgeInsets.all(36.0),
//               child: Form(
//                 key: _formkey,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     SizedBox(height: 45),
//                     firstnameField,
//                     SizedBox(height: 20),
//                     emailField,
//                     SizedBox(height: 20),
//                     phoneField,
//                     SizedBox(height: 20),
//                     passwordfield,
//                     SizedBox(height: 20),
//                     confirmPasswordField,
//                     SizedBox(height: 30),
//                     SignUpButton,
//                     SizedBox(height: 15),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   void SignUp(String email, String password) async {
//     if (_formkey.currentState!.validate()) {
//       await _auth
//           .createUserWithEmailAndPassword(email: email, password: password)
//           .then((value) {
//         sendEmailVerification();
//         postDetailsToFireStore();
//         Fluttertoast.showToast(msg: "Account Created successfully");
//       }).catchError((e) {
//         Fluttertoast.showToast(msg: e!.message);
//       });
//     }
//   }
//
//   postDetailsToFireStore() async {
//     FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
//     User? user = _auth.currentUser;
//
//     UserModel userModel = UserModel();
//
//     userModel.email = user!.email;
//     userModel.uid = user!.uid;
//     userModel.phonenumber = phonenumberEditingController.text;
//     userModel.Name = NameEditingController.text;
//
//     await firebaseFirestore
//         .collection("users")
//         .doc(user.uid)
//         .set(userModel.toMap());
//
//     Navigator.pop(context);
//   }
//
//   void sendEmailVerification() async {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => MyLogin()),
//     );
//   }
// }



// import 'package:classico/login.dart';
// import 'package:classico/usermodel.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:email_otp/email_otp.dart';
// import 'package:classico/emailotp.dart';
// import 'package:classico/login.dart';
// import 'package:classico/phone.dart';
// import 'package:classico/otp.dart';
// import 'package:classico/usermodel.dart';
//
// class MyRegister extends StatefulWidget {
//   const MyRegister({Key? key}) : super(key: key);
//
//   @override
//   State<MyRegister> createState() => _MyRegisterState();
// }
//
// class _MyRegisterState extends State<MyRegister> {
//   final _formkey = GlobalKey<FormState>();
//   final _auth = FirebaseAuth.instance;
//   final NameEditingController = TextEditingController();
//   final emailEditingController = TextEditingController();
//   final passwordEditingController = TextEditingController();
//   final confirmpasswordEditingController = TextEditingController();
//   final phonenumberEditingController = TextEditingController();
//   var _isObscured1 = true;
//   var _isObscured2 = true;
//
//   @override
//   void initState() {
//     _isObscured1 = true;
//     _isObscured2 = true;
//     super.initState();
//   }
//
//   Widget build(BuildContext context) {
//     //FirstName Field
//     final firstnameField = TextFormField(
//       autofocus: false,
//       controller: NameEditingController,
//       keyboardType: TextInputType.name,
//       validator: (value) {
//         RegExp regex = new RegExp(r'^.{3,}$');
//         if (value!.isEmpty) {
//           return ("Name cannot be Empty");
//         }
//         if (!regex.hasMatch(value)) {
//           return ("Please enter valid Name (Min 3 Characters)");
//         }
//         return null;
//       },
//       onSaved: (value) {
//         NameEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         fillColor: Colors.grey.shade100,
//         filled: true,
//         prefixIcon: Icon(Icons.account_circle),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "Name",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//
//     final emailField = TextFormField(
//       autofocus: false,
//       controller: emailEditingController,
//       keyboardType: TextInputType.emailAddress,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return ("Please Enter Your Email");
//         }
//         if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
//           return ("Please Enter a valid email");
//         }
//         return null;
//       },
//       onSaved: (value) {
//         emailEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         fillColor: Colors.grey.shade100,
//         filled: true,
//         prefixIcon: Icon(Icons.mail),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "Email",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//
//     final phoneField = TextFormField(
//       autofocus: false,
//       controller: phonenumberEditingController,
//       keyboardType: TextInputType.phone,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return ("Please Enter Phone Number");
//         }
//         return null;
//       },
//       onSaved: (value) {
//         phonenumberEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         fillColor: Colors.grey.shade100,
//         filled: true,
//         prefixIcon: Icon(Icons.phone),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         hintText: "Phone Number",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//
//     final passwordfield = TextFormField(
//       autofocus: false,
//       controller: passwordEditingController,
//       obscureText: _isObscured1,
//       validator: (value) {
//         RegExp regex = new RegExp(r'^.{6,}$');
//         if (value!.isEmpty) {
//           return ("Password is required for login");
//         }
//         if (!regex.hasMatch(value)) {
//           return ("Please enter a valid Password (Min 6 Characters)");
//         }
//         return null;
//       },
//       onSaved: (value) {
//         passwordEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         fillColor: Colors.grey.shade100,
//         filled: true,
//         prefixIcon: Icon(Icons.vpn_key),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         suffixIcon: IconButton(
//           padding: const EdgeInsetsDirectional.only(end: 12.0),
//           icon: _isObscured1
//               ? const Icon(Icons.visibility)
//               : const Icon(Icons.visibility_off),
//           onPressed: () {
//             setState(() {
//               _isObscured1 = !_isObscured1;
//             });
//           },
//         ),
//         hintText: "Password",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//
//     final confirmPasswordField = TextFormField(
//       autofocus: false,
//       controller: confirmpasswordEditingController,
//       obscureText: _isObscured2,
//       validator: (value) {
//         if (confirmpasswordEditingController.text !=
//             passwordEditingController.text) {
//           return "Passwords don't match";
//         }
//         return null;
//       },
//       onSaved: (value) {
//         confirmpasswordEditingController.text = value!;
//       },
//       textInputAction: TextInputAction.done,
//       decoration: InputDecoration(
//         fillColor: Colors.grey.shade100,
//         filled: true,
//         prefixIcon: Icon(Icons.vpn_key),
//         contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
//         suffixIcon: IconButton(
//           padding: const EdgeInsetsDirectional.only(end: 12.0),
//           icon: _isObscured2
//               ? const Icon(Icons.visibility)
//               : const Icon(Icons.visibility_off),
//           onPressed: () {
//             setState(() {
//               _isObscured2 = !_isObscured2;
//             });
//           },
//         ),
//         hintText: "Confirm Password",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//
//     final SignUpButton = Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "SignUp",
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(width: 170),
//             CircleAvatar(
//               radius: 25,
//               backgroundColor: Color(0xff4c505b),
//               child: IconButton(
//                 icon: Icon(
//                   Icons.arrow_forward,
//                   color: Colors.white,
//                 ),
//                 onPressed: () {
//                   SignUp(emailEditingController.text, passwordEditingController.text);
//                 },
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: 20),
//         GestureDetector(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => MyLogin()),
//             );
//           },
//           child: Text(
//             "Already existing user? Login",
//             style: TextStyle(
//               fontSize: 16,
//               color: Colors.black,
//               decoration: TextDecoration.underline,
//             ),
//           ),
//         ),
//       ],
//     );
//
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('assets/register6.jpg'), // Replace with your image asset path
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         appBar: null,
//         body: Center(
//           child: SingleChildScrollView(
//             child: Container(
//               color: Colors.transparent,
//               child: Padding(
//                 padding: const EdgeInsets.all(36.0),
//                 child: Form(
//                   key: _formkey,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: <Widget>[
//                       SizedBox(height: 45),
//                       firstnameField,
//                       SizedBox(height: 20),
//                       emailField,
//                       SizedBox(height: 20),
//                       phoneField,
//                       SizedBox(height: 20),
//                       passwordfield,
//                       SizedBox(height: 20),
//                       confirmPasswordField,
//                       SizedBox(height: 30),
//                       SignUpButton,
//                       SizedBox(height: 15),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   void SignUp(String email, String password) async {
//     if (_formkey.currentState!.validate()) {
//       await _auth
//           .createUserWithEmailAndPassword(email: email, password: password)
//           .then((value) {
//         sendEmailVerification();
//         postDetailsToFireStore();
//         Fluttertoast.showToast(msg: "Account Created successfully");
//       }).catchError((e) {
//         Fluttertoast.showToast(msg: e!.message);
//       });
//     }
//   }
//
//   postDetailsToFireStore() async {
//     FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
//     User? user = _auth.currentUser;
//
//     UserModel userModel = UserModel();
//
//     userModel.email = user!.email;
//     userModel.uid = user!.uid;
//     userModel.phonenumber = phonenumberEditingController.text;
//     userModel.Name = NameEditingController.text;
//
//     await firebaseFirestore
//         .collection("users")
//         .doc(user.uid)
//         .set(userModel.toMap());
//
//     Navigator.pop(context);
//   }
//
//   void sendEmailVerification() async {
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => MyLogin()),
//     );
//   }
// }






import 'package:classico/login.dart';
import 'package:classico/usermodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:email_otp/email_otp.dart';
import 'package:classico/emailotp.dart';
import 'package:classico/login.dart';
import 'package:classico/phone.dart';
import 'package:classico/otp.dart';
import 'package:classico/usermodel.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  final _formkey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  final NameEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  final confirmpasswordEditingController = TextEditingController();
  final phonenumberEditingController = TextEditingController();
  var _isObscured1 = true;
  var _isObscured2 = true;

  @override
  void initState() {
    _isObscured1 = true;
    _isObscured2 = true;
    super.initState();
  }

  Widget build(BuildContext context) {
    //FirstName Field
    final firstnameField = TextFormField(
      autofocus: false,
      controller: NameEditingController,
      keyboardType: TextInputType.name,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{3,}$');
        if (value!.isEmpty) {
          return ("Name cannot be Empty");
        }
        if (!regex.hasMatch(value)) {
          return ("Please enter valid Name (Min 3 Characters)");
        }
        return null;
      },
      onSaved: (value) {
        NameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade100,
        filled: true,
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Your Email");
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Please Enter a valid email");
        }
        return null;
      },
      onSaved: (value) {
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade100,
        filled: true,
        prefixIcon: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final phoneField = TextFormField(
      autofocus: false,
      controller: phonenumberEditingController,
      keyboardType: TextInputType.phone,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please Enter Phone Number");
        }
        return null;
      },
      onSaved: (value) {
        phonenumberEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade100,
        filled: true,
        prefixIcon: Icon(Icons.phone),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Phone Number",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final passwordfield = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      obscureText: _isObscured1,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("Password is required for login");
        }
        if (!regex.hasMatch(value)) {
          return ("Please enter a valid Password (Min 6 Characters)");
        }
        return null;
      },
      onSaved: (value) {
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade100,
        filled: true,
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        suffixIcon: IconButton(
          padding: const EdgeInsetsDirectional.only(end: 12.0),
          icon: _isObscured1
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
          onPressed: () {
            setState(() {
              _isObscured1 = !_isObscured1;
            });
          },
        ),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: confirmpasswordEditingController,
      obscureText: _isObscured2,
      validator: (value) {
        if (confirmpasswordEditingController.text !=
            passwordEditingController.text) {
          return "Passwords don't match";
        }
        return null;
      },
      onSaved: (value) {
        confirmpasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade100,
        filled: true,
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        suffixIcon: IconButton(
          padding: const EdgeInsetsDirectional.only(end: 12.0),
          icon: _isObscured2
              ? const Icon(Icons.visibility)
              : const Icon(Icons.visibility_off),
          onPressed: () {
            setState(() {
              _isObscured2 = !_isObscured2;
            });
          },
        ),
        hintText: "Confirm Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final SignUpButton = Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SignUp",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 170),
            CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xff4c505b),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
                onPressed: () {
                  SignUp(emailEditingController.text, passwordEditingController.text);
                },
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyLogin()),
            );
          },
          child: Text(
            "Already existing user? Login",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/register6.jpg'), // Replace with your image asset path
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: null,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Create\nAccount',
                          style: TextStyle(color: Colors.black, fontSize: 33,fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 25),
                      firstnameField,
                      SizedBox(height: 20),
                      emailField,
                      SizedBox(height: 20),
                      phoneField,
                      SizedBox(height: 20),
                      passwordfield,
                      SizedBox(height: 20),
                      confirmPasswordField,
                      SizedBox(height: 30),
                      SignUpButton,
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void SignUp(String email, String password) async {
    if (_formkey.currentState!.validate()) {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
        sendEmailVerification();
        postDetailsToFireStore();
        Fluttertoast.showToast(msg: "Account Created successfully");
      }).catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }

  postDetailsToFireStore() async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;

    UserModel userModel = UserModel();

    userModel.email = user!.email;
    userModel.uid = user!.uid;
    userModel.phonenumber = phonenumberEditingController.text;
    userModel.Name = NameEditingController.text;

    await firebaseFirestore
        .collection("users")
        .doc(user.uid)
        .set(userModel.toMap());

    Navigator.pop(context);
  }

  void sendEmailVerification() async {
    // Send email verification logic goes here
  }
}
