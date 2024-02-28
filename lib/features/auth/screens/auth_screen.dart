import 'package:ama/constants/GlobalVariable.dart';
import 'package:flutter/material.dart';

enum Auth { sign, signup }

class AtuhScreen extends StatefulWidget {
  static const String routeName = '/auth_screen';
  const AtuhScreen({super.key});

  @override
  State<AtuhScreen> createState() => _AtuhScreenState();
}

class _AtuhScreenState extends State<AtuhScreen> {
  Auth _auth = Auth.signup;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: GlobalVariables.backgroundColor,
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                'Welcome',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              ListTile(
                title: Text(
                  'Create Account',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                  value: Auth.signup,
                  groupValue: _auth,
                  onChanged: () {},
                  activeColor: GlobalVariables.secondaryColor,
                ),
              )
            ],
          ),
        )));
  }
}
