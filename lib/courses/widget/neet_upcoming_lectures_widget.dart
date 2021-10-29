
import 'package:blended_siksha/courses/model/neet_upcoming_lectures_model.dart';
import 'package:blended_siksha/constants.dart';
import 'package:blended_siksha/shared/routes.dart';
import 'package:flutter/material.dart';

class NeetUgUpcomingLecture extends StatefulWidget {
  const NeetUgUpcomingLecture();

  @override
  _NeetUgUpcomingLectureState createState() => _NeetUgUpcomingLectureState();
}

class _NeetUgUpcomingLectureState extends State<NeetUgUpcomingLecture> {
  late List<NeetUpcomingLecturesModel> neetUpcomingLecturesModelList;

  @override
  void initState() {
    loadNeetUpcomingLecturesList();
    super.initState();
  }

  void loadNeetUpcomingLecturesList() {
    neetUpcomingLecturesModelList = [
      NeetUpcomingLecturesModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'BIOLOGY - 1200 Interested',
          details: 'Learn Something New Today-Ozone\nDepletion',
          time: '29 min, By Raj Gupta',
          icon: Icons.details),
      NeetUpcomingLecturesModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'BIOLOGY - 1200 Interested',
          details: 'Learn Something New Today-Ozone\nDepletion',
          time: '29 min, By Raj Gupta',
          icon: Icons.details),
      NeetUpcomingLecturesModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'BIOLOGY - 1200 Interested',
          details: 'Learn Something New Today-Ozone\nDepletion',
          time: '29 min, By Raj Gupta',
          icon: Icons.details),
      NeetUpcomingLecturesModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'BIOLOGY - 1200 Interested',
          details: 'Learn Something New Today-Ozone\nDepletion',
          time: '29 min, By Raj Gupta',
          icon: Icons.details),
      NeetUpcomingLecturesModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'BIOLOGY - 1200 Interested',
          details: 'Learn Something New Today-Ozone\nDepletion',
          time: '29 min, By Raj Gupta',
          icon: Icons.details),
      NeetUpcomingLecturesModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'BIOLOGY - 1200 Interested',
          details: 'Learn Something New Today-Ozone\nDepletion',
          time: '29 min, By Raj Gupta',
          icon: Icons.details),
      NeetUpcomingLecturesModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'BIOLOGY - 1200 Interested',
          details: 'Learn Something New Today-Ozone\nDepletion',
          time: '29 min, By Raj Gupta',
          icon: Icons.details),
      NeetUpcomingLecturesModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'BIOLOGY - 1200 Interested',
          details: 'Learn Something New Today-Ozone\nDepletion',
          time: '29 min, By Raj Gupta',
          icon: Icons.details),
      NeetUpcomingLecturesModel(
          img: 'https://wallpapercave.com/wp/hQuSTGC.jpg',
          subject: 'BIOLOGY - 1200 Interested',
          details: 'Learn Something New Today-Ozone\nDepletion',
          time: '29 min, By Raj Gupta',
          icon: Icons.details),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('UPCOMING LECTURES'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              itemCount: neetUpcomingLecturesModelList.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 72,
                                width: 72,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Constant.secondaryColor,
                                        offset: Offset(0, 2),
                                        blurRadius: 6,
                                      ),
                                    ],
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            neetUpcomingLecturesModelList[index]
                                                .img),
                                        fit: BoxFit.fill),
                                    shape: BoxShape.rectangle),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.5,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            neetUpcomingLecturesModelList[index]
                                                .subject,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Constant.secondaryColor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16)),
                                            elevation: 8,
                                            child: Container(
                                              height: 24,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16)),
                                              child: Icon(
                                                  neetUpcomingLecturesModelList[
                                                          index]
                                                      .icon,
                                                  color: Constant.primaryColor,
                                                  size: 16),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        neetUpcomingLecturesModelList[index]
                                            .details,
                                        maxLines: 2,
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        neetUpcomingLecturesModelList[index]
                                            .time,
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.13,
                            height: 1,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orangeAccent,
                                size: 8,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Master Class',
                                style: TextStyle(
                                    fontSize: 8, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
