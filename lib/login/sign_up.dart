import 'package:flutter/material.dart';
import 'package:blended_siksha/constants.dart';
import 'package:blended_siksha/shared/routes.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController gmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 18, 0, 250),
              child: Card(
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            'Sign up',
                            style: TextStyle(
                              fontSize: 16,
                              color: Constant.primaryColor,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.15,
                        child: Row(
                          children: const [
                            Text(
                              "Welcome to Live Class",
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.15,
                        child: Row(
                          children: const [
                            Text(
                              "Let's get started",
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.15,
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
                                controller: nameController,
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 12),
                                    border: InputBorder.none,
                                    hintText: 'Name'),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return '';
                                  }
                                  return null;
                                },
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.15,
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
                                controller: gmailController,
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 12),
                                    border: InputBorder.none,
                                    hintText: 'Gmail'),
                                validator: (value) {
                                  String a = gmailController.text.trim();
                                  if (value == null || value.isEmpty) {
                                    return '';
                                  }
                                },
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.15,
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
                                controller: passwordController,
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 12),
                                    border: InputBorder.none,
                                    hintText: 'Password'),
                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty ||
                                      value.length != 8) {
                                    return '';
                                  }
                                  return null;
                                },
                              )),
                        ),
                      ),
                      Expanded(child: Container()),
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
                                        context, Routes.MOBILE_VERIFIED);
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              'Please Enter Valid Name, Gmail & Password')),
                                    );
                                  }
                                },
                                child: Icon(Icons.done)),
                            foregroundColor: Colors.white,
                            backgroundColor: Constant.primaryColor,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
