import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_code_picker/country_code.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:pickins/pages/OTP_PAGE.dart';
import 'paginations.dart';

class Otp_ScaffoldContent extends StatelessWidget {
  const Otp_ScaffoldContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: true,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              // BACKGROUND IMAGE//
              image: AssetImage('images/background2.png'),
              fit: BoxFit.cover,
            ),
          ),

          //::::::::::::::::::::::::: Main Container ::::::::::::::::::://

          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage(
                            'images/phone.png',
                          ),
                          width: 70,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Container(
                              width: 280,
                              child: Text(
                                'Please enter the 4-digit code sent to you at ',
                                style: TextStyle(
                                  fontFamily: 'Roboto-Light',
                                  fontSize: 28,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          '+91-9876543210',
                          style: TextStyle(
                            fontFamily: 'Ubuntu-Bold',
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //::::::::::::: code verification field ::::::::::::://

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OTP(),
                    OTP(),
                    OTP(),
                    OTP(),
                  ],
                ),
                //::::::::::::: resend verification code  ::::::::::::://

                Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Text(
                            'Didn’t you receive any code',
                            style: TextStyle(
                                fontSize: 15, fontFamily: 'Roboto-Light'),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return OTP_Page();
                                }));
                              },
                              child: Text(
                                'RESEND A NEW CODE >',
                                style: TextStyle(
                                    fontFamily: 'Roboto-Light',
                                    color: Color(0xff3737C5),
                                    fontSize: 20),
                              ),
                            ),
                          ),
                        ),

                        //::::::::::::: Pagination manually coded ::::::::::::://
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Paginations(),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xff00A9DE),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                              ),
                              width: 15,
                              height: 15,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Paginations(),
                            SizedBox(
                              width: 8,
                            ),
                            Paginations(),
                          ],
                        ),

                        // ::::::::::::: buttom text ::::::::::::://

                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Container(
                              width: 250,
                              child: Text(
                                'By signing up with us you agree with our Privacy Policy and Terms of Services',
                                style: TextStyle(
                                  fontFamily: 'Ubuntu-Bold',
                                  // fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OTP extends StatelessWidget {
  const OTP({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, right: 4, left: 4),
      child: Container(
        width: 80,
        child: TextField(
          keyboardType: TextInputType.number,
          maxLength: 1,
          maxLengthEnforced: true,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            labelStyle: TextStyle(
              color: Colors.black,
              fontSize: 50,
            ),
            labelText: '    1',
          ),
        ),
      ),
    );
  }
}
