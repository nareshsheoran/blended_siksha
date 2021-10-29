import 'dart:ui';
import 'package:blended_siksha/constants.dart';
import 'package:blended_siksha/courses/uploaded_courses_model/neet_jee_math_model.dart';
import 'package:flutter/material.dart';

class NeetJeeMathCourses extends StatefulWidget {
  const NeetJeeMathCourses({Key? key}) : super(key: key);

  @override
  _NeetJeeMathCoursesState createState() => _NeetJeeMathCoursesState();
}

class _NeetJeeMathCoursesState extends State<NeetJeeMathCourses> {
  late List<NeetJeeMathModel> neetJeeMathCoursesModelList;

  @override
  void initState() {
    loadNeetMathCoursesList();
    super.initState();
  }

  void loadNeetMathCoursesList() {
    neetJeeMathCoursesModelList = [
      NeetJeeMathModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          details: 'Introduction to\nTrigonometry',
          editor: 'by Deekshith Sir',
          amount: '₹1',
          totalAmount: '₹499'),
      NeetJeeMathModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          details: 'Introduction to\nTrigonometry',
          editor: 'by Deekshith Sir',
          amount: '₹4',
          totalAmount: '₹499'),
      NeetJeeMathModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          details: 'Introduction to\nTrigonometry',
          editor: 'by Deekshith Sir',
          amount: '₹5',
          totalAmount: '₹499'),
      NeetJeeMathModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          details: 'Introduction to\nTrigonometry',
          editor: 'by Deekshith Sir',
          amount: '₹9',
          totalAmount: '₹499'),
      NeetJeeMathModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          details: 'Introduction to\nTrigonometry',
          editor: 'by Deekshith Sir',
          amount: '₹8',
          totalAmount: '₹499'),
      NeetJeeMathModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          details: 'Introduction to\nTrigonometry',
          editor: 'by Deekshith Sir',
          amount: '₹3',
          totalAmount: '₹499'),
      NeetJeeMathModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          details: 'Introduction to\nTrigonometry',
          editor: 'by Deekshith Sir',
          amount: '₹3',
          totalAmount: '₹499'),
      NeetJeeMathModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          details: 'Introduction to\nTrigonometry',
          editor: 'by Deekshith Sir',
          amount: '₹3',
          totalAmount: '₹499'),
      NeetJeeMathModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          details: 'Introduction to\nTrigonometry',
          editor: 'by Deekshith Sir',
          amount: '₹3',
          totalAmount: '₹499'),
      NeetJeeMathModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          details: 'Introduction to\nTrigonometry',
          editor: 'by Deekshith Sir',
          amount: '₹3',
          totalAmount: '₹499'),
    ];
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JEE MATH COURSES'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 8,
              crossAxisCount: 2,
              childAspectRatio: 2 / 2.625,
            ),
            itemCount: neetJeeMathCoursesModelList.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Column(
                    children: [
                      Container(
                        height: 130,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            boxShadow: [
                              BoxShadow(
                                  color: Constant.secondaryColor,
                                  offset: Offset(0, 2),
                                  blurRadius: 6),
                            ],
                            image: DecorationImage(
                                image: NetworkImage(
                                    neetJeeMathCoursesModelList[index].img),
                                fit: BoxFit.fill),
                            shape: BoxShape.rectangle),
                      ),
                      Container(
                          decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1, color: Constant.primaryColor),
                                left: BorderSide(
                                    width: 1, color: Constant.primaryColor),
                                right: BorderSide(
                                    width: 1, color: Constant.primaryColor)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  neetJeeMathCoursesModelList[index].details,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  neetJeeMathCoursesModelList[index].editor,
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Constant.secondaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 4),
                                Container(
                                  height: 1,
                                  width: MediaQuery.of(context).size.height / 5,
                                  color: Constant.secondaryColor,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 4, 0, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        neetJeeMathCoursesModelList[index]
                                            .amount,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10),
                                      ),
                                      Text(
                                        neetJeeMathCoursesModelList[index]
                                            .totalAmount,
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: Constant.secondaryColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
