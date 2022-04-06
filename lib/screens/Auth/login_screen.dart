import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:doorder/constrain.dart';
import 'package:doorder/screens/Auth/forgot_password.dart';

import '../widgets/background.dart';
import '../widgets/text_input_field.dart';

class LogInScreeen extends StatelessWidget {
  const LogInScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      BackGroundImage(
        image: "assets/images/login_bg.png",
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const Flexible(
              child: Center(
                child: Text(
                  'PandaOrder',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextInputField(
                  hint: "Email",
                  icon: FontAwesomeIcons.envelope,
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    height: size.height * 0.08,
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Icon(
                                FontAwesomeIcons.lock,
                                size: 28,
                                color: kWhite,
                              ),
                            ),
                            hintText: "Password",
                            hintStyle: kBodyText),
                        obscureText: true,
                        style: kBodyText,
                        keyboardType: TextInputType.number,
                        textInputAction: TextInputAction.done,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, 'ForgotPassword'),
                  child: Text(
                    'Forgot Password',
                    style: kBodyText,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                RoundButton(
                  function: () => Navigator.pushNamed(context, "MainMenue"),
                  buttonName: 'Login',
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, "CreateNewAccount"),
              child: Container(
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(width: 1, color: kWhite))),
                child: Text(
                  "Create New Account",
                  style: kBodyText,
                ),
              ),
            ),
            SizedBox(height: 20)
          ],
        ),
      )
    ]);
  }
}

class RoundButton extends StatelessWidget {
  RoundButton({Key? key, required this.buttonName, required this.function})
      : super(key: key);
  final String buttonName;
  GestureTapCallback function;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(16), color: kBlue),
      child: FlatButton(
        onPressed: function,
        child: Text(
          buttonName,
          style: kBodyText.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
