import 'package:blended_siksha/courses/online_courses/model/neet_online_test_model.dart';
import 'package:blended_siksha/constants.dart';
import 'package:blended_siksha/shared/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class NeetOnlineTest extends StatefulWidget {
  const NeetOnlineTest({Key? key}) : super(key: key);

  @override
  _NeetOnlineTestState createState() => _NeetOnlineTestState();
}

class _NeetOnlineTestState extends State<NeetOnlineTest> {
   late List<NeetOnlineTestModel> neetOnlineTestModelList;

  @override
  void initState() {
    loadOnlineTestList();
    super.initState();
  }

  void loadOnlineTestList() {
    neetOnlineTestModelList = [
      NeetOnlineTestModel(
          img: "https://wallpapercave.com/wp/hQuSTGC.jpg",
          subject: 'NEET MATH',
          openPageName: Routes.QUESTION_BANK),
      NeetOnlineTestModel(
        img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
        subject: 'NEET CHEMISTRY', openPageName: '',
      ),
      NeetOnlineTestModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'NEET BIOLOGY', openPageName: ''),
      NeetOnlineTestModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'NEET PHYSICS',
          openPageName: Routes.NEET_PHYSICS_ONLINE),
      NeetOnlineTestModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg', subject: 'JEE MATH', openPageName: ''),
      NeetOnlineTestModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'JEE PHYSICS', openPageName: ''),
      NeetOnlineTestModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'JEE CHEMISTRY', openPageName: ''),
      NeetOnlineTestModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'JEE BIOLOGY', openPageName: ''),
      NeetOnlineTestModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'JEE PHYSICS', openPageName: ''),
      NeetOnlineTestModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'JEE PHYSICS', openPageName: ''),
    ];
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ONLINE TEST'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 8,
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 2.09),
                  itemCount: neetOnlineTestModelList.length,
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
                              Navigator.pushNamed(context,
                                  neetOnlineTestModelList[index].openPageName);
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
                                              color: Colors.grey,
                                              offset: Offset(0, 2),
                                              blurRadius: 6),
                                        ],
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                neetOnlineTestModelList[index]
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
                                        neetOnlineTestModelList[index].subject),
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
