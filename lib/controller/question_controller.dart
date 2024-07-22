import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sympashop/models/question.dart';
import 'package:sympashop/score/score_screen.dart';

// we use get package for our state management
class QuestionController extends GetxController
    // ignore: deprecated_member_use
    with
        SingleGetTickerProviderMixin {
  // Lets animates our progress bar
  AnimationController? _animationController;
  Animation? _animation;
  Animation get animation => _animation!;

  PageController? _pageController;
  PageController get pageController => _pageController!;

// called immediately after the widget is allocated memory
  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController!)
      ..addListener(
        () {
          update();
        },
      );

    _animationController!.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }
  // called just before the controlle is deleted from memory

  @override
  void onClose() {
    super.onClose();
    _animationController!.dispose();
    _pageController!.dispose();
  }

  List<Question> _questions = sample_data
      .map((question) => Question(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answer: question['answer_index'],
          ))
      .toList();

  List<Question> get questions => _questions;

// PageController? _pageController;
// PageController get pageController => _pageController!;

  bool _isAnswered = false;
  bool get isAnswered => _isAnswered;

  int? _correctAns;
  int get correctAns => _correctAns!;

  int? _selectedAns;
  int get selectedAns => _selectedAns!;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;

  int _numOfCorrectAns = 0;
  int get num0fCorrectAns => _numOfCorrectAns;

  void checkAns(Question question, int selectedIndex) {
    // because once user press any option then it will run
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;
    _animationController!.stop();
    update();

// Once user select an ans after 3s it will go to the next qn
    Future.delayed(Duration(seconds: 3), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;
      _isAnswered = false;
      _pageController!
          .nextPage(duration: Duration(milliseconds: 250), curve: Curves.ease);

      // reset the counter
      _animationController!.reset();
      // then start it again
      // Once timer is finish go to the next qn
      _animationController!.forward().whenComplete(nextQuestion);
    } else {
      // Get package provide us single way to navigate another page
      Get.to(ScoreScreen());
    }
  }

  void updateTheNumber(int index) {
    _questionNumber.value = index + 1;
  }
}
