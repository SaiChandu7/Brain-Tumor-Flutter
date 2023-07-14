import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});

  static String verify="";

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  TextEditingController countrycode=TextEditingController();
  var phone="";
  @override
  void initState() {
    // TODO: implement initState
    countrycode.text="+91";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left:25,right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment : MainAxisAlignment.center,
            children: [
              Image.asset('assets/phone1.jpg',width: 250,height:250),
              SizedBox(
                height: 25,
              ),


              Text('Phone Verification', style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),
          ),
                SizedBox(
                 height: 10,
                ),
              Text('We need to Register your phone before getting started !', style: TextStyle(
                  fontSize: 18,
              ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: countrycode,
                        decoration: InputDecoration(
                            border: InputBorder.none
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text("|",style: TextStyle(
                        fontSize: 35,
                        color: Colors.purple
                    ),),
                    SizedBox(width: 10,),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        onChanged: (value){
                          phone=value;
                        },
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Phone"
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(onPressed: ()async{
                  await FirebaseAuth.instance.verifyPhoneNumber(
                    phoneNumber: '${countrycode.text+phone}',
                    verificationCompleted: (PhoneAuthCredential credential) {},
                    verificationFailed: (FirebaseAuthException e) {},
                    codeSent: (String verificationId, int? resendToken) {
                      MyPhone.verify=verificationId;
                      Navigator.pushNamed(context, "otp");
                    },
                    codeAutoRetrievalTimeout: (String verificationId) {},
                  );
                  // Navigator.pushNamed(context, "otp");
                }, child: Text('Send the Code'), style: ElevatedButton.styleFrom(
                    primary: Colors.purple.shade300,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),),
              )

            ],
          ),
        ),
      )
    );
  }
}
