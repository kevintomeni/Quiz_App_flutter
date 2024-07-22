import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sympashop/constant.dart';
import 'package:sympashop/controller/question_controller.dart';

import 'progress_bar.dart';
import 'question_cars.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());
    return Stack(
      children: [
        SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              SizedBox(height: kDefaultPadding),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Obx(
                    () => Text.rich(
                      TextSpan(
                        text:
                            "Question ${_questionController.questionNumber.value}",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(color: kSecondaryColor),
                        children: [
                          TextSpan(
                            text: "/${_questionController.questions.length}",
                          )
                        ],
                      ),
                    ),
                  )),
              Divider(thickness: 1.5),
              SizedBox(height: kDefaultPadding),
              Expanded(
                child: PageView.builder(
                  // block swipe to next page
                  physics: NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController,
                  itemCount: _questionController.questions.length,
                  onPageChanged: _questionController.updateTheNumber,
                  itemBuilder: (context, index) => QuestionCard(
                    question: _questionController.questions[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
