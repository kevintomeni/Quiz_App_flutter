import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sympashop/controller/question_controller.dart';

import '../../../constant.dart';
import '../../../models/question.dart';
import 'option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    required this.question,
  });
  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              question.question,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: kBlackColor),
            ),
            ...List.generate(
                question.options.length,
                (index) => Option(
                      index: index,
                      text: question.options[index],
                      press: () =>
                          _questionController.checkAns(question, index),
                    ))
          ],
        ),
      ),
    );
  }
}
