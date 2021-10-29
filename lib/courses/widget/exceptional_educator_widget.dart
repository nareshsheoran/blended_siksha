

import 'package:blended_siksha/constants.dart';
import 'package:blended_siksha/courses/model/neet_ug_exceptional_educator_model.dart';
import 'package:blended_siksha/shared/routes.dart';
import 'package:flutter/material.dart';

class ExceptionalEducatorWidget extends StatelessWidget {
  final NeetExceptionalEducatorsModel neetExceptionalEducatorsModel;

  const ExceptionalEducatorWidget(this.neetExceptionalEducatorsModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                    image: NetworkImage(neetExceptionalEducatorsModel.img),
                    fit: BoxFit.fill),
                shape: BoxShape.rectangle),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            neetExceptionalEducatorsModel.name,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            neetExceptionalEducatorsModel.subject,
            style: TextStyle(
              color: Constant.secondaryColor,
              fontSize: 12,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
