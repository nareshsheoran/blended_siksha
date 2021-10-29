import 'package:blended_siksha/courses/model/neet_ug_question_bank_model.dart';
import 'package:flutter/material.dart';

class NeetQuestionBankWidget extends StatelessWidget {
  final NeetQuestionBankModel neetQuestionBankModel;

  const NeetQuestionBankWidget(this.neetQuestionBankModel);

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
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                    image: NetworkImage(neetQuestionBankModel.img),
                    fit: BoxFit.fill),
                shape: BoxShape.rectangle),
          ),
        ],
      ),
    );
  }
}
