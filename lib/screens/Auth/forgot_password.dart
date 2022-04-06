import 'package:doorder/constrain.dart';
import 'package:doorder/screens/widgets/background.dart';
import 'package:doorder/screens/widgets/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'login_screen.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackGroundImage(image: "assets/images/login_bg.png"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text(
              "Forgot Password",
              style: kBodyText,
            ),
            centerTitle: true,
          ),
          body: Column(children: [
            Center(
              child: Column(
                children: [
                  Container(
                    width: size.width * 0.8,
                    child: Text(
                      'Enter Your email to reset password',
                      style: kBodyText,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const TextInputField(
                      hint: 'Email',
                      icon: FontAwesomeIcons.envelope,
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.done),
                  RoundButton(
                    buttonName: 'Submit',
                    function: () {},
                  ),
                ],
              ),
            )
          ]),
        ),
      ],
    );
  }
}
