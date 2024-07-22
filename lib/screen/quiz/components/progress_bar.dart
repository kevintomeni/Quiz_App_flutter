import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sympashop/controller/question_controller.dart';

import '../../../constant.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF3F4768), width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
          init: QuestionController(),
          builder: (controller) {
            return Stack(
              children: [
                // LayoutBuilder provide us the available space for the
                // constraints.maxWidth needed for our animation
                LayoutBuilder(
                  builder: (context, Constraints) => Container(
                    // from 0 to 1 it takes 60s
                    width: Constraints.maxWidth * controller.animation.value,
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "${(controller.animation.value * 60).round()} sec"),
                        SvgPicture.asset(
                          "assets/icons/clock-three-svgrepo-com.svg",
                          // ignore: deprecated_member_use
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
