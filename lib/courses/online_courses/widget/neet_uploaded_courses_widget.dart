
import 'package:blended_siksha/constants.dart';
import 'package:blended_siksha/courses/online_courses/model/neet_uploaded_courses_model.dart';
import 'package:blended_siksha/shared/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class NeetUploadedCourses extends StatefulWidget {
  const NeetUploadedCourses({Key? key}) : super(key: key);

  @override
  _NeetUploadedCoursesState createState() => _NeetUploadedCoursesState();
}

class _NeetUploadedCoursesState extends State<NeetUploadedCourses> {
  late List<NeetUploadedCoursesModel> neetUploadedCoursesModelList;

  @override
  void initState() {
    loadUploadedCoursesList();
    super.initState();
  }

  void loadUploadedCoursesList() {
    neetUploadedCoursesModelList = [
      NeetUploadedCoursesModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'JEE MATH',
          openPageName: Routes.JEEMATH_COURSES),
      NeetUploadedCoursesModel(
        img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
        subject: 'NEET CHEMISTRY', openPageName: '',
      ),
      NeetUploadedCoursesModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'NEET BIOLOGY', openPageName: ''),
      NeetUploadedCoursesModel(
        img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
        subject: 'NEET PHYSICS', openPageName: '',
      ),
      NeetUploadedCoursesModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'NEET MATH', openPageName: ''),
      NeetUploadedCoursesModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'JEE CHEMISTRY', openPageName: ''),
      NeetUploadedCoursesModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'JEE BIOLOGY', openPageName: ''),
      NeetUploadedCoursesModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'JEE PHYSICS', openPageName: ''),
      NeetUploadedCoursesModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'JEE PHYSICS', openPageName: ''),
      NeetUploadedCoursesModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'JEE PHYSICS', openPageName: ''),
    ];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UPLOADED COURSE'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Text(
                    'Video List',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 8,
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 2.09),
                  itemCount: neetUploadedCoursesModelList.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                              side: BorderSide(
                                width: 1,
                                color: Constant.primaryColor,
                              )),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context,
                                  neetUploadedCoursesModelList[index]
                                      .openPageName);
                            },
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Container(
                                    height: 120,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: Constant.primaryColor,
                                        borderRadius: BorderRadius.circular(4),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Constant.secondaryColor,
                                              offset: Offset(0, 2),
                                              blurRadius: 6),
                                        ],
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                neetUploadedCoursesModelList[
                                                        index]
                                                    .img),
                                            fit: BoxFit.fill),
                                        shape: BoxShape.rectangle),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Constant.primaryColor,
                                      border: Border.all(
                                        color: Constant.primaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(4)),
                                  width: MediaQuery.of(context).size.height,
                                  height:
                                      MediaQuery.of(context).size.height / 23.7,
                                  child: Center(
                                    child: Text(
                                        neetUploadedCoursesModelList[index]
                                            .subject),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
