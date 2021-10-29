
import 'package:blended_siksha/courses/model/question_bank_model.dart';
import 'package:blended_siksha/constants.dart';
import 'package:blended_siksha/shared/routes.dart';
import 'package:flutter/material.dart';

class QuestionBank extends StatefulWidget {
  const QuestionBank({Key? key}) : super(key: key);

  @override
  _QuestionBankState createState() => _QuestionBankState();
}

class _QuestionBankState extends State<QuestionBank> {
  late List<QuestionBankModel> questionBankModelList;
  @override
  void initState() {
    loadQuestionBankList();
    super.initState();
  }

  loadQuestionBankList() {
    questionBankModelList = [
      QuestionBankModel(
          que: 'Online Test 7 Q-Bank',
          totalQue: '40 QUESTIONS',
          icon: Icons.cloud_download),
      QuestionBankModel(
          que: 'Online Test 6 Q-Bank',
          totalQue: '40 QUESTIONS',
          icon: Icons.cloud_download),
      QuestionBankModel(
          que: 'Online Test 5 Q-Bank',
          totalQue: '40 QUESTIONS',
          icon: Icons.cloud_download),
      QuestionBankModel(
          que: 'Online Test 4 Q-Bank',
          totalQue: '40 QUESTIONS',
          icon: Icons.cloud_download),
      QuestionBankModel(
          que: 'Online Test 3 Q-Bank',
          totalQue: '40 QUESTIONS',
          icon: Icons.cloud_download),
      QuestionBankModel(
          que: 'Online Test 2 Q-Bank',
          totalQue: '40 QUESTIONS',
          icon: Icons.cloud_download),
      QuestionBankModel(
          que: 'Online Test 1 Q-Bank',
          totalQue: '40 QUESTIONS',
          icon: Icons.cloud_download),
      QuestionBankModel(
          que: 'Online Test 13 Q-Bank',
          totalQue: '40 QUESTIONS',
          icon: Icons.cloud_download),
      QuestionBankModel(
          que: 'Online Test 14 Q-Bank',
          totalQue: '40 QUESTIONS',
          icon: Icons.cloud_download),
      QuestionBankModel(
          que: 'Online Test 11 Q-Bank',
          totalQue: '40 QUESTIONS',
          icon: Icons.cloud_download),
      QuestionBankModel(
          que: 'Online Test 12 Q-Bank',
          totalQue: '40 QUESTIONS',
          icon: Icons.cloud_download),
      QuestionBankModel(
          que: 'Online Test 10 Q-Bank',
          totalQue: '40 QUESTIONS',
          icon: Icons.cloud_download),
      QuestionBankModel(
          que: 'Online Test 8 Q-Bank',
          totalQue: '40 QUESTIONS',
          icon: Icons.cloud_download),
    ];
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('QUESTION BANK'),
        ),
        body: SingleChildScrollView(
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: questionBankModelList.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  questionBankModelList[index].que,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  questionBankModelList[index].totalQue,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    color: Constant.secondaryColor,),
                                )
                              ],
                            ),
                            Expanded(child: Container()),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Constant.primaryColor,),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 2, 8, 2),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Download',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10,color: Constant.primaryColor,),
                                          ),
                                          SizedBox(width: 8),
                                          Icon(
                                            Icons.cloud_download,
                                            size: 12,
                                            color: Constant.primaryColor,                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ))));
  }
}
