import 'package:flutter/material.dart';
import 'package:scr_1/core/widgets/customtextfield.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  TextEditingController name = TextEditingController();
  TextEditingController datebirth = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Form(
          child: Column(
        children: [
          Customtextfield(
              perfix: Icons.person,
              
              validator: (value) {
                if (value!.isEmpty) {
                  return 'please enter your username';
                }
                return null;
              },
              textInputType: TextInputType.text,
              label: 'Username',
              hint: 'enter your username'
              ),
        ],
      )),
    );
  }
}
