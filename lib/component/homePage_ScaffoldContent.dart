import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_code_picker/country_code.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:pickins/pages/OTP_PAGE.dart';
import 'paginations.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';

class ScaffoldContent extends StatelessWidget {
  dynamic countries_code;
  String number;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                // BACKGROUND IMAGE//
                image: AssetImage('images/background2.png'),
                fit: BoxFit.cover,
              ),
            ),

            // main container
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          // Mobile Image
                          Image(
                            image: AssetImage(
                              'images/phone.png', // mobile image name phone.png
                            ),
                            width: 100,
                          ),

                          // welcome text
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              'Welcome to',
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Roboto-Light',
                              ),
                            ),
                          ),

                          // app name
                          Text(
                            'Digital Store',
                            style: TextStyle(
                              fontSize: 35,
                              fontFamily: 'Ubuntu-Bold',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),

                //:::::::::::::  form Field ::::::::::::://

                Column(
                  children: <Widget>[
                    Container(
                      child: Row(
                        children: <Widget>[
                          //::::::::::::: Conutry Picker for country codes :::::::::::::://

                          Container(
                            width: 100,
                            child: CountryCodePicker(
                              onChanged: (value) {
                                countries_code = value; // country code
                              },

                              initialSelection:
                                  'IT', // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                              favorite: [
                                '+39',
                                'FR'
                              ], //  Shows only country name and flag

                              showOnlyCountryWhenClosed:
                                  false, // show  flag and the Text left when pop is close
                              alignLeft: false,
                            ),
                          ),

                          // inputfiled

                          Container(
                            width: 280,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              onChanged: (String value) {
                                number = value; // phone number
                              },
                              decoration: InputDecoration(
                                hintText: '111-11111-11111',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // next Buntton

                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 45),
                        child: RaisedButton(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 15, bottom: 15, right: 130, left: 130),
                              child: Text(
                                'NEXT >',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            color: Color(0xff3737C5),
                            onPressed: () {
                              print('$countries_code' + '$number');
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return OTP_Page();
                              }));
                            }),
                      ),
                    ),

                    SizedBox(
                      height: 40,
                    ),

                    //::::::::::::: Pagination manually coded ::::::::::::://
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xff00A9DE),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
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
                        SizedBox(
                          width: 8,
                        ),
                        Paginations(),
                      ],
                    ),
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
                          fontFamily: 'Roboto-Light',
                          // fontWeight: FontWeight.bold,
                          fontSize: 16.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
