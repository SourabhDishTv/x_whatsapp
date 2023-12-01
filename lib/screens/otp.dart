import 'dart:developer';

import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

final GlobalKey<FormState> _otpFormKey = GlobalKey<FormState>();

final TextEditingController _controller_otp_one = TextEditingController();
final TextEditingController _controller_otp_two = TextEditingController();
final TextEditingController _controller_otp_three = TextEditingController();
final TextEditingController _controller_otp_four = TextEditingController();

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("OTP"),
        // ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Enter the OTP"),
              Form(
                key: _otpFormKey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OtpItem(controller: _controller_otp_one),
                    OtpItem(controller: _controller_otp_two),
                    OtpItem(controller: _controller_otp_three),
                    OtpItem(controller: _controller_otp_four),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OtpItem extends StatelessWidget {
  final TextEditingController? controller;

  const OtpItem({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 50,
        child: TextFormField(
          controller: controller,
          onEditingComplete: () {
            FocusScope.of(context).nextFocus();
          },
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            } else if (value.isEmpty) {
              FocusScope.of(context).previousFocus();
            }
            log(value);
          },
          maxLength: 1,
          textAlign: TextAlign.center,
          validator: (value) {},
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 16,
            letterSpacing: 1,
            fontWeight: FontWeight.bold,
          ),
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
            hintText: "*",
            hintStyle: TextStyle(color: Colors.grey),
            counterText: "",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Colors.blue, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Colors.blue, width: 2),
            ),
            filled: true,
          ),
        ),
      ),
    );
  }
}
