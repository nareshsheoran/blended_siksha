import 'package:blended_siksha/courses/viewmodel/neet_ug_page_viewmodel.dart';
import 'package:blended_siksha/courses/widget/dashboard_bottom_bar.dart';
import 'package:blended_siksha/courses/widget/exceptional_educator_widget.dart';
import 'package:blended_siksha/courses/widget/neet_all_subject_widget.dart';
import 'package:blended_siksha/courses/widget/neet_ug_completed_widget.dart';
import 'package:blended_siksha/courses/widget/neet_ug_first_widget.dart';
import 'package:blended_siksha/courses/widget/neet_ug_question_bank_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:blended_siksha/constants.dart';


class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
   late DashboardViewModel viewModel;

  final int headingFontSize = 20;
  final Color headingColor = Colors.black;

  void initState() {
    viewModel = DashboardViewModel();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel<DashboardViewModel>(
      model: viewModel,
      child: ScopedModelDescendant<DashboardViewModel>(
          builder: (context, child, model) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('EDUCATION APP'),
            leading: Icon(Icons.format_align_left_outlined),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Constant.secondaryColor,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  height: MediaQuery.of(context).size.height / 19,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'NEET UG',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          'Hi, Naresh!',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                getNeetUgModelListWidget(),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Watch free classes',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            getViewAllWidget()
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 210,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            itemCount:
                                viewModel.neetRecentlyStartedModelList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, index) {
                              return Card(
                                elevation: 8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 135,
                                      width: MediaQuery.of(context).size.width /
                                          1.2,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(viewModel
                                                  .neetRecentlyStartedModelList[
                                                      index]
                                                  .img),
                                              fit: BoxFit.fill),
                                          shape: BoxShape.rectangle),
                                    ),
                                    Container(
                                      height: 2,
                                      width: MediaQuery.of(context).size.width /
                                          1.2,
                                      decoration: const BoxDecoration(
                                        color: Constant.primaryColor,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Constant.secondaryColor,
                                            offset: Offset(0.0, 1.0), //
                                            blurRadius: 6.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 4, 0, 4),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            viewModel
                                                .neetRecentlyStartedModelList[
                                                    index]
                                                .title,
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Constant.secondaryColor,
                                            ),
                                          ),
                                          Text(
                                            viewModel
                                                .neetRecentlyStartedModelList[
                                                    index]
                                                .subtitle,
                                            style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            viewModel
                                                .neetRecentlyStartedModelList[
                                                    index]
                                                .time,
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Constant.secondaryColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Constant.secondaryColor,
                                          borderRadius:
                                              BorderRadius.circular(4.0)),
                                      width: MediaQuery.of(context).size.width /
                                          1.2,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 4, 0, 4),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Constant.primaryColor,
                                              size: 8,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              'Master Class',
                                              style: TextStyle(
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 6,
                            ),
                            Text(
                              'You could also',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Constant.secondaryColor,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width / 1.05,
                          decoration: BoxDecoration(
                            color: Constant.secondaryColor,
                            boxShadow: [
                              BoxShadow(
                                color: Constant.secondaryColor,
                                offset: Offset(0.0, 2.0), //(x,y)
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.message),
                          title: Text('Ask a doubt'),
                          trailing: Container(
                              width: 16,
                              height: 16,
                              color: Constant.primaryColor,
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 16,
                                color: Colors.white,
                              )),
                        ),
                        ListTile(
                          leading: Icon(Icons.message),
                          title: Text('Take a quick quiz'),
                          trailing: Container(
                              width: 16,
                              height: 16,
                              color: Constant.primaryColor,
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 16,
                                color: Colors.white,
                              )),
                        ),
                        ListTile(
                          leading: Icon(Icons.message),
                          title: Text('Try a mock test'),
                          trailing: Container(
                              width: 16,
                              height: 16,
                              color: Constant.primaryColor,
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 16,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Meet Our Exceptional Educators',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            getViewAllWidget()
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 210,
                          child: ListView.builder(
                            itemCount: viewModel
                                .neetExceptionalEducatorsModelList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, index) {
                              return ExceptionalEducatorWidget(viewModel
                                  .neetExceptionalEducatorsModelList[index]);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: SizedBox(
                    height: 8,
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Courses on All subjects',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.width / 1,
                          color: Constant.secondaryColor,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Upcomming',
                              style: TextStyle(
                                  color: Constant.secondaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            getViewAllWidget()
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 210,
                          width: MediaQuery.of(context).size.width,
                          child: neetAllSubjectListWidget(),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Recently Started',
                              style: TextStyle(
                                  color: Constant.secondaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            getViewAllWidget()
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 210,
                          width: MediaQuery.of(context).size.width,
                          child: ListView.builder(
                            itemCount:
                                viewModel.neetRecentlyStartedModelList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, index) {
                              return Card(
                                elevation: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 136,
                                      width: MediaQuery.of(context).size.width /
                                          1.2,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(viewModel
                                                  .neetRecentlyStartedModelList[
                                                      index]
                                                  .img),
                                              fit: BoxFit.fill),
                                          shape: BoxShape.rectangle),
                                    ),
                                    Container(
                                      color: Constant.primaryColor,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 4, 0, 4),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            viewModel
                                                .neetRecentlyStartedModelList[
                                                    index]
                                                .title,
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Constant.secondaryColor,
                                            ),
                                          ),
                                          Text(
                                            viewModel
                                                .neetRecentlyStartedModelList[
                                                    index]
                                                .subtitle,
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            viewModel
                                                .neetRecentlyStartedModelList[
                                                    index]
                                                .time,
                                            style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold,
                                              color: Constant.secondaryColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius:
                                              BorderRadius.circular(4.0)),
                                      width: MediaQuery.of(context).size.width /
                                          1.2,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 4, 0, 4),
                                        child: Row(
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
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'COMPLETED',
                              style: TextStyle(
                                  color: Constant.secondaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            getViewAllWidget(),
                          ]),
                      Container(
                        height: 210,
                        width: MediaQuery.of(context).size.width,
                        child: getNeetCompletedListWidget(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Constant.primaryColor,
                    ),
                    child: Center(
                      child: Text(
                        'Get Subscription',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4, 8, 4, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'QUESTION BANK',
                              style: TextStyle(
                                  color: Constant.secondaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            getViewAllWidget()
                          ],
                        ),
                      ),
                      Container(
                        height: 160,
                        width: MediaQuery.of(context).size.width,
                        child: getQuestionBankListWidget(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 28,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Constant.primaryColor,
                    ),
                    child: Center(
                      child: Text(
                        'Get Subscription',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: const DashboardBottomBar(),
        );
      }),
    );
  }

  Widget getViewAllWidget() {
    return const Text(
      'VIEW ALL',
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Constant.primaryColor,
      ),
    );
  }

  Widget neetAllSubjectListWidget() {
    return ListView.builder(
      itemCount: viewModel.neetAllSubjectModelList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, index) {
        return NeetAllSubjectWidget(viewModel.neetAllSubjectModelList[index]);
      },
    );
  }

  Widget getNeetCompletedListWidget() {
    return Container(
      child: ListView.builder(
        itemCount: viewModel.neetCompletedModelList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return NeetCompletedWidget(viewModel.neetCompletedModelList[index]);
        },
      ),
    );
  }

  Widget getQuestionBankListWidget() {
    return Container(
      child: ListView.builder(
        itemCount: viewModel.neetQuestionBankModelList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return NeetQuestionBankWidget(
              viewModel.neetQuestionBankModelList[index]);
        },
      ),
    );
  }

  Widget getNeetUgModelListWidget() {
    return Container(
      height: 96,
      child: ListView.builder(
        itemCount: viewModel.neetUgModelList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return NeetUgFirstWidget(viewModel.neetUgModelList[index]);
        },
      ),
    );
  }
}
