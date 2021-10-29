import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:blended_siksha/constants.dart';
import 'package:blended_siksha/shared/routes.dart';

class PopularCourses extends StatefulWidget {
  const PopularCourses({Key? key}) : super(key: key);

  @override
  _PopularCoursesState createState() => _PopularCoursesState();
}

class _PopularCoursesState extends State<PopularCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Your Goal'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 320),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          elevation: 8,
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width / 1.3,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Constant.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      child: Text('Popular Courses'))),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.NEETUG_PAGE);
                    },
                    child: newList(
                        'Neet UG',
                        Icon(
                          Icons.addchart_sharp,
                          color: Constant.primaryColor,
                        )),
                  ),
                  newList(
                      'Neet PG',
                      Icon(
                        Icons.home,
                        color: Constant.primaryColor,
                      )),
                  newList(
                      'IIT JEE MAIN',
                      Icon(
                        Icons.addchart_sharp,
                        color: Constant.primaryColor,
                      )),
                  newList(
                      'IIT JEE ADVANCED',
                      Icon(
                        Icons.addchart_sharp,
                        color: Constant.primaryColor,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget newList(String string, Icon icon) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 16,
    ),
    child: Column(
      children: [
        ListTile(
          leading: icon,
          title: Text(string),
          trailing: Container(
              width: 16,
              height: 16,
              color: Constant.primaryColor,
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 16,
                color: Colors.white,
              )),
        )
      ],
    ),
  );
}
