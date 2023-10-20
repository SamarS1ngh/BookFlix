import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Register extends StatelessWidget {
  Register({super.key});
  TextEditingController _name = TextEditingController();
  TextEditingController _pswd = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              TextFormField(
                controller: _name,
              ),
              TextFormField(
                controller: _pswd,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
