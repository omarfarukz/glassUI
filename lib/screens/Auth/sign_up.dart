import 'package:doorder/screens/widgets/background.dart';
import 'package:doorder/screens/widgets/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_screen.dart';

class CreateNewAccount extends StatelessWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackGroundImage(image: "assets/images/login_bg.png"),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
          ),
          body: ListView(
            children: [
              Center(
                // ignore: prefer_const_literals_to_create_immutables
                child: Column(children: [
                  const TextInputField(
                    hint: 'Email',
                    icon: FontAwesomeIcons.envelope,
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  const TextInputField(
                    hint: 'Company Name',
                    icon: FontAwesomeIcons.busSimple,
                    inputType: TextInputType.name,
                    inputAction: TextInputAction.next,
                  ),
                  const TextInputField(
                    hint: 'Reg No',
                    icon: FontAwesomeIcons.registered,
                    inputType: TextInputType.number,
                    inputAction: TextInputAction.next,
                  ),
                  const TextInputField(
                    hint: 'email',
                    icon: FontAwesomeIcons.envelope,
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  const TextInputField(
                    hint: 'Phone',
                    icon: FontAwesomeIcons.squarePhone,
                    inputType: TextInputType.number,
                    inputAction: TextInputAction.next,
                  ),
                  const TextInputField(
                    hint: 'Address',
                    icon: FontAwesomeIcons.locationPin,
                    inputType: TextInputType.number,
                    inputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  RoundButton(
                    buttonName: 'Sign Up',
                    function: () {
                      Navigator.pushNamed(context, "MainMenue");
                    },
                  ),
                ]),
              ),
            ],
          ),
        )
      ],
    );
  }
}
