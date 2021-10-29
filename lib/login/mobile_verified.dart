import 'package:blended_siksha/constants.dart';
import 'package:blended_siksha/shared/routes.dart';
import 'package:flutter/material.dart';

class MobileVerifiedPage extends StatefulWidget {
  const MobileVerifiedPage({Key? key}) : super(key: key);

  @override
  _MobileVerifiedPageState createState() => _MobileVerifiedPageState();
}

class _MobileVerifiedPageState extends State<MobileVerifiedPage> {
  TextEditingController mobileController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 220),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Phone Number',
                          style: TextStyle(
                            fontSize: 16,
                            color: Constant.primaryColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.25,
                      child: Row(
                        children: [Text('Enter mobile number to continue')],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.22,
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 6.5,
                            child: Material(
                              elevation: 5,
                              child: Container(
                                  height: 48,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Constant.primaryColor,
                                        width: 1.5,
                                      )),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      DropdownMenuItem(
                                        child: Text(' +91'),
                                      ),
                                      Icon(Icons.keyboard_arrow_down_rounded),
                                    ],
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 1.55,
                            child: Material(
                              elevation: 5,
                              child: Container(
                                  height: 48,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Constant.primaryColor,
                                        width: 1.5,
                                      )),
                                  child: TextFormField(
                                    controller: mobileController,
                                    keyboardType: TextInputType.datetime,
                                    decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            left: 12, bottom: 4),
                                        border: InputBorder.none,
                                        hintText: ' Enter Number'),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          value.length != 10) {
                                        return '';
                                      }
                                      return null;
                                    },
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          child: InkWell(
                              onTap: () {
                                if (_formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(' Successfully..')),
                                  );
                                  Navigator.pushNamed(
                                      context, Routes.VERIFIED_PAGE);
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            'Please Enter Valid 10 Digit Phone No')),
                                  );
                                }
                              },
                              child: Icon(Icons.arrow_forward_ios_outlined)),
                          foregroundColor: Colors.white,
                          backgroundColor: Constant.primaryColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
