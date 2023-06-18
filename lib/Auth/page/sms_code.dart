import 'package:firebase_auth/firebase_auth.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';
import 'package:resturant/Auth/page/page_phone.dart';
import 'package:resturant/config.dart';
import 'package:resturant/welcome/getstart.dart';

import '../../home/home.dart';

class SmsCode extends StatefulWidget {
  @override
  _SmsCodeState createState() => _SmsCodeState();

  signInWithOTP(String? smsCode, String? verificationId) {}
}

class _SmsCodeState extends State<SmsCode> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  var code;
  @override
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: partialColor),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  Widget build(BuildContext context) {
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    double myheight = MediaQuery.of(context).size.height / 3;
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        SvgPicture.asset(
          'assets/icons/Enter OTP-bro.svg',
          height: myheight/1.1 ,
        ),
        Directionality(
          textDirection:TextDirection.rtl ,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            margin: EdgeInsets.symmetric(horizontal: 22),
            child: Text('رساله نصية سوف ترسل الئ هاتفك قم بادخال الكود المرسل',
                style: TextStyle(fontSize: 25)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Pinput(
            length: 6,
            defaultPinTheme: defaultPinTheme,
            focusedPinTheme: focusedPinTheme,
            submittedPinTheme: submittedPinTheme,
            onChanged: (value) {
              code = value;
            },
            pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
            showCursor: true,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Material(
          color: BasicColor,
          borderRadius: BorderRadius.circular(8),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width / 1.1,
            onPressed: () async {
              try {
                PhoneAuthCredential credential = PhoneAuthProvider.credential(
                    verificationId: PagePhone.verify, smsCode: code);
                await auth.signInWithCredential(credential);
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                  builder: (context) {
                    return Home();
                  },
                ), (route) => false);
              } catch (e) {
                print('Error');
              }
            },
            child: Text(
              'تسجيل الدخول',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
        ),
            ],
          ));
  }
}

void sendphone() {}
