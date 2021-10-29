
import 'package:blended_siksha/constants.dart';
import 'package:blended_siksha/courses/uploaded_courses_model/neet_physics_online_model.dart';
import 'package:flutter/material.dart';

class NeetPhysicsOnline extends StatefulWidget {
  const NeetPhysicsOnline({Key? key}) : super(key: key);

  @override
  _NeetPhysicsOnlineState createState() => _NeetPhysicsOnlineState();
}

class _NeetPhysicsOnlineState extends State<NeetPhysicsOnline> {
  late List<NeetPhysicsOnlineModel> neetPhysicsOnlineModelList;
  @override
  void initState() {
    loadNeetPhysicsOnlineList();
    super.initState();
  }

  loadNeetPhysicsOnlineList() {
    neetPhysicsOnlineModelList = [
      NeetPhysicsOnlineModel(
          totalQue: '40 QUESTIONS',
          onlineTest: 'Online Test 7',
          mistake: '8 Mistakes Allowed',
          totalMistake: '9 Mistakes',
          icon: Icons.slow_motion_video),
      NeetPhysicsOnlineModel(
          totalQue: '40 QUESTIONS',
          onlineTest: 'Online Test 6',
          mistake: '8 Mistakes Allowed',
          totalMistake: '9 Mistakes',
          icon: Icons.slow_motion_video),
      NeetPhysicsOnlineModel(
          totalQue: '40 QUESTIONS',
          onlineTest: 'Online Test 5',
          mistake: '8 Mistakes Allowed',
          totalMistake: '9 Mistakes',
          icon: Icons.slow_motion_video),
      NeetPhysicsOnlineModel(
          totalQue: '40 QUESTIONS',
          onlineTest: 'Online Test 4',
          mistake: '8 Mistakes Allowed',
          totalMistake: '9 Mistakes',
          icon: Icons.slow_motion_video),
      NeetPhysicsOnlineModel(
          totalQue: '40 QUESTIONS',
          onlineTest: 'Online Test 3',
          mistake: '8 Mistakes Allowed',
          totalMistake: '9 Mistakes',
          icon: Icons.slow_motion_video),
      NeetPhysicsOnlineModel(
          totalQue: '40 QUESTIONS',
          onlineTest: 'Online Test 2',
          mistake: '8 Mistakes Allowed',
          totalMistake: '9 Mistakes',
          icon: Icons.slow_motion_video),
      NeetPhysicsOnlineModel(
          totalQue: '40 QUESTIONS',
          onlineTest: 'Online Test 1',
          mistake: '8 Mistakes Allowed',
          totalMistake: '9 Mistakes',
          icon: Icons.slow_motion_video),
    ];
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NEET PHYSICS ONLINE TEST'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            itemCount: neetPhysicsOnlineModelList.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 57,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            neetPhysicsOnlineModelList[index].totalQue,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Constant.secondaryColor,
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            neetPhysicsOnlineModelList[index].onlineTest,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 12,
                                color: Constant.primaryColor,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                neetPhysicsOnlineModelList[index].mistake,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Constant.primaryColor,
                                    fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              color: Constant.primaryColor,
                              height: 16,
                              width: 100,
                              child: Center(
                                  child: Text(
                                neetPhysicsOnlineModelList[index].totalMistake,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))),
                          Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Constant.primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                                child: Row(
                                  children: [
                                    Icon(
                                      neetPhysicsOnlineModelList[index].icon,
                                      size: 12,
                                      color: Constant.primaryColor,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      'Start',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Constant.primaryColor,
                                      ),
                                    )
                                  ],
                                ),
                              ))
                        ],
                      ),
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
