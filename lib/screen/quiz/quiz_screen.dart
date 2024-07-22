import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sympashop/controller/question_controller.dart';

import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // flutter show the back button automatically
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            onPressed: _controller.nextQuestion,
            child: Text("Skip"),
          ),
        ],
      ),
      body: Body(),
    );
  }
}
