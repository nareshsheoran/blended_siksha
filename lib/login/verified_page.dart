import 'package:flutter/material.dart';
import 'package:blended_siksha/constants.dart';
import 'package:blended_siksha/shared/routes.dart';

class VerifiedPage extends StatefulWidget {
  const VerifiedPage({Key? key}) : super(key: key);

  @override
  _VerifiedPageState createState() => _VerifiedPageState();
}

class _VerifiedPageState extends State<VerifiedPage> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(key: _formKey,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 220),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Verified',
                          style: TextStyle(
                            fontSize: 16,
                            color: Constant.primaryColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.25,
                      child: Row(
                        children: const [
                          Text(
                            'Verified your number',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.25,
                      child: Row(
                        children: const [
                          Text('4 digit code sent to'),
                          Text(
                            ' +91-999999****',
                            style: TextStyle(
                              color: Constant.primaryColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Material(
                          elevation: 5,
                          child: SingleChildScrollView(
                            child: Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width / 5.5,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: Constant.secondaryColor,
                                      width: 1.5,
                                    )),
                                child: Center(
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            left: 20, bottom: 12),
                                        border: InputBorder.none,
                                        hintText: ''),
                                    validator: (value) {
                                      if (value == null ||
                                          value.isEmpty ||
                                          value.length != 1) {
                                        return '';
                                      }
                                      return null;
                                    },
                                  ),
                                )),
                          ),
                        ),
                        Material(
                          elevation: 5,
                          child: SingleChildScrollView(
                            child: Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width / 5.5,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: Constant.secondaryColor,
                                      width: 1.5,
                                    )),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(left: 20, bottom: 12),
                                      border: InputBorder.none,
                                      hintText: ''),
                                  validator: (value) {
                                    if (value == null ||
                                        value.isEmpty ||
                                        value.length != 1) {
                                      return '';
                                    }
                                    return null;
                                  },
                                )),
                          ),
                        ),
                        Material(
                          elevation: 5,
                          child: SingleChildScrollView(
                            child: Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width / 5.5,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: Constant.secondaryColor,
                                      width: 1.5,
                                    )),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(left: 20, bottom: 12),
                                      border: InputBorder.none,
                                      hintText: ''),
                                  validator: (value) {
                                    if (value == null ||
                                        value.isEmpty ||
                                        value.length != 1) {
                                      return '';
                                    }
                                    return null;
                                  },
                                )),
                          ),
                        ),
                        Material(
                          elevation: 5,
                          child: SingleChildScrollView(
                            child: Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width / 5.5,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: Constant.secondaryColor,
                                      width: 1.5,
                                    )),
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(left: 20, bottom: 12),
                                      border: InputBorder.none,
                                      hintText: ''),
                                  validator: (value) {
                                    if (value == null ||
                                        value.isEmpty ||
                                        value.length != 1) {
                                      return '';
                                    }
                                    return null;
                                  },
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Resend'),
                          CircleAvatar(
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, Routes.CONGRATULATIONS_PAGE);
                                  // if (_formKey.currentState!.validate()) {
                                  //   ScaffoldMessenger.of(context).showSnackBar(
                                  //     const SnackBar(
                                  //         content: Text(' Successfully..')),
                                  //   );
                                  // Navigator.pushNamed(
                                  //     context, Routes.CONGRATULATIONS_PAGE);
                                  // } else {
                                  //   ScaffoldMessenger.of(context).showSnackBar(
                                  //     const SnackBar(
                                  //         content: Text(
                                  //             'Please Enter Valid 4 Digit OTP')),
                                  //   );
                                  // }
                                },
                                child: Icon(Icons.done)),
                            foregroundColor: Colors.white,
                            backgroundColor: Constant.secondaryColor,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2,
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
