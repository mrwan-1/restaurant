import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resturant/Auth/page/sms_code.dart';
import 'package:resturant/config.dart';

class PagePhone extends StatefulWidget {
  const PagePhone({super.key});
  static String verify = "";
  @override
  State<PagePhone> createState() => _PagePhoneState();
}

class _PagePhoneState extends State<PagePhone> {
  final formKey = new GlobalKey<FormState>();

  TextEditingController controller = TextEditingController();
  var phone;
  @override
  void initState() {
    // TODO: implement initState
    controller.text = "+967";
  }

  sendphone() async {
    try {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '${controller.text + phone}',
        verificationCompleted: (PhoneAuthCredential credential) {
           
        },
        verificationFailed: (FirebaseAuthException e) {
          
        },
        codeSent: (String verificationId, int? resendToken) {
          PagePhone.verify = verificationId;
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
            builder: (context) {
              EasyLoading.dismiss();
              return SmsCode();
            },
          ), (route) => false);
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    double myheight = MediaQuery.of(context).size.height / 3;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 9),
                SvgPicture.asset(
                  'assets/icons/Mobile login-amico.svg',
                  height: myheight /1.1,
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'لتسجيل الدخول يرجئ ادخال رقم\n هاتفك للتحقق',
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      flex: 2,
                      child: TextFormField(
                        textDirection: TextDirection.ltr,
                        keyboardType: TextInputType.phone,
                        onChanged: (value) {
                          phone = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'ادخل رقم الهاتف',
                          hintStyle: TextStyle(fontSize: 20),
                          contentPadding: EdgeInsets.all(20),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: partialColor, width: 1.0),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '967+',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Image.asset(
                              'assets/images/yemen.png',
                              height: myheight / 10,
                            ),
                          ],
                        )),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Material(
                  borderRadius: BorderRadius.circular(10),
                  color: BasicColor,
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width / 1.1,
                    onPressed: () async {
                     

                      await sendphone();
                      print(phone);
                    },
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
