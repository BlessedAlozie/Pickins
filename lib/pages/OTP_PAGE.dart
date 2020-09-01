import 'package:flutter/material.dart';
import 'hame_page.dart';
import 'Business_Setup.dart';
import 'package:pickins/component/otp_scafolldContent.dart';

class OTP_Page extends StatefulWidget {
  @override
  _OTP_PageState createState() => _OTP_PageState();
}

class _OTP_PageState extends State<OTP_Page> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // Scaffold content is in component/otp_ScaffoldContent

    return Otp_ScaffoldContent();
  }
}
