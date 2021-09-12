import 'package:flutter/material.dart';
import 'package:gps_app/Modules/ComponentsModule/AppButton.dart';
import 'package:gps_app/Modules/ComponentsModule/TextFields.dart';
import 'package:gps_app/Resources/StringConstants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Gps app'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Placeholder(
                        fallbackHeight: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppTextField(
                hint: phoneText,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppTextField(
                hint: passwordText,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                obscure: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppButton(
                height: 50,
                label: loginText,
                onPressed: () => Navigator.pushNamed(context, 'home'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AppButton(
                height: 50,
                label: signUpText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
