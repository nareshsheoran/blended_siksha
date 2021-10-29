import 'dart:ui';

import 'package:blended_siksha/constants.dart';
import 'package:blended_siksha/shared/routes.dart';
import 'package:flutter/material.dart';

class CongratulationPage extends StatefulWidget {
  const CongratulationPage({Key? key}) : super(key: key);

  @override
  _CongratulationPageState createState() => _CongratulationPageState();
}

class _CongratulationPageState extends State<CongratulationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Constant.secondaryColor,
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 3,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 10.0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.done_rounded,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'Congratulations!',
                      style: TextStyle(fontSize: 28),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "your mobile number verified seccessfull!..",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      'you can continue using koolls shopping',
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Constant.primaryColor,
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        child: Center(
                            child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, Routes.POPULAR_COURSES);
                                },
                                child: Text('Go to Next'))),
                      ),
                    )
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
