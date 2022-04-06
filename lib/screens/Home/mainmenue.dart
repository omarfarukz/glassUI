// ignore_for_file: prefer_const_constructors

import 'package:doorder/constrain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainMenue extends StatefulWidget {
  MainMenue({Key? key}) : super(key: key);

  @override
  State<MainMenue> createState() => _MainMenueState();
}

class _MainMenueState extends State<MainMenue> {
  int _selectedItems = 1;

  // void _onItemTapped(int index) {
  //   if (_selectedItems == 1) {}
  //   setState(() {
  //     _selectedItems = index;
  //   });
  //   Navigator.pushNamed(context, "MainMenue");
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFf4f4f4),
      // appBar: AppBar(),
      body: ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "AddMenue");
                  },
                  child: Text(
                    'Add Menue',
                    style: TextStyle(backgroundColor: Colors.greenAccent),
                  ))
            ],
          ),
          ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                            height: 100,
                            width: size.width * 0.30,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/images/food.jpg",
                                fit: BoxFit.cover,
                              ),
                            )
                            // color: Colors.red,
                            ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Flexible(
                          flex: 2,
                          child: Container(
                            height: 100,
                            width: size.width * 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Smooked Beed Ribs',
                                  style: kItemText,
                                ),
                                Text(
                                  'Austrilian Beaf with lemon and  chilli grilled in the grill pan',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                );
              }),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.qrcode), label: 'QrCode'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home), label: 'Menue'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.moneyBill), label: 'Payment'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.person), label: 'Profile'),
        ],
        currentIndex: _selectedItems,
        selectedItemColor: kBlue,
        // onTap: _onItemTapped,
        selectedLabelStyle:
            TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        selectedFontSize: 32,
        // unselectedFontSize: TextStyle(fontSize: 12),
      ),
    );
  }
}
