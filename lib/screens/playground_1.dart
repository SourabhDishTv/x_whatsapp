import 'dart:developer';

import 'package:flutter/material.dart';

class Playground1 extends StatelessWidget {
  const Playground1({Key? key}) : super(key: key);


  
  @override
  Widget build(BuildContext context) {

    final TextEditingController _controller = TextEditingController(
      
    );

    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Play ground One"),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              
              Form(
                key: _formKey,
                child: TextFormField(
                  controller: _controller,
                  onChanged: (value) {
                    log(value);
                  },
                  validator: (value) {
                    
                  },
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                    hintText: "Enter mobile here..",
                    hintStyle: TextStyle(
                      color: Colors.blueGrey
                    ),
                    label: Text("Mobile no", style: TextStyle(
                      color: Colors.blueGrey
                    ),),
                    alignLabelWithHint: true,
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                    ),
                    prefix: Padding(
                      padding: EdgeInsets.only(right: 4),
                      child: Text(
                        "+91",
                        style: TextStyle(
                          color: Colors.blue
                        ),
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.phone_android_rounded,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
