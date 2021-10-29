
import 'package:blended_siksha/constants.dart';
import 'package:blended_siksha/courses/model/neet_ug_completed_model.dart';
import 'package:blended_siksha/shared/routes.dart';
import 'package:flutter/material.dart';

class NeetCompletedWidget extends StatelessWidget {
  final NeetCompletedModel neetCompletedModel;

  const NeetCompletedWidget(this.neetCompletedModel);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 136,
            width: MediaQuery.of(context).size.width / 1.2,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(neetCompletedModel.img),
                    fit: BoxFit.fill),
                shape: BoxShape.rectangle),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 4, 0, 4),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                neetCompletedModel.title,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Constant.secondaryColor,
                ),
              ),
              Text(
                neetCompletedModel.subtitle,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
          Expanded(
            child: Container(),
          ),
          Container(
            decoration: BoxDecoration(
                color: Constant.secondaryColor,
                borderRadius: BorderRadius.circular(4.0)),
            width: MediaQuery.of(context).size.width / 1.2,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 0, 4),
              child: Row(
                children: [
                  Text(
                    neetCompletedModel.time,
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
