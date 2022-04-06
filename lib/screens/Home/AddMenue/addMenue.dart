import 'package:doorder/screens/Auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../widgets/text_input_field.dart';

class AddMenue extends StatefulWidget {
  AddMenue({Key? key}) : super(key: key);

  @override
  State<AddMenue> createState() => _AddMenueState();
}

class _AddMenueState extends State<AddMenue> {
  // List<String> item = ['Item1', 'Food', 'Drinks'];
  String dropdownvalue = 'Select Item';
  var items = [
    'Select Item',
    'Food',
    'Drinks',
    'Goreng',
    'Western',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: DropdownButton(
              value: dropdownvalue,
              icon: Icon(Icons.keyboard_double_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(value: items, child: Text(items));
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
          const TextInputField(
            hint: 'Item Name',
            icon: FontAwesomeIcons.pen,
            inputType: TextInputType.number,
            inputAction: TextInputAction.done,
          ),
          const TextInputField(
            hint: 'Item Description',
            icon: FontAwesomeIcons.pen,
            inputType: TextInputType.number,
            inputAction: TextInputAction.done,
          ),
          const TextInputField(
            hint: 'Item Price',
            icon: FontAwesomeIcons.moneyBill,
            inputType: TextInputType.number,
            inputAction: TextInputAction.done,
          ),
          // const TextInpukh
          //   hint: 'Item Name',
          //   icon: FontAwesomeIcons.pen,
          //   inputType: TextInputType.number,
          //   inputAction: TextInputAction.done,
          // ),
          RoundButton(buttonName: 'Submit', function: () {})
        ],
      ),
    );
  }
}
