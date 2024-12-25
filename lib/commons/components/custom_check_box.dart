import 'package:flutter/material.dart';
import 'package:quiz_test/utils/styles/colors/app_colors.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: isSelected ? AppColors.checkBoxColor : null,
        border: Border.all(
          color: AppColors.checkBoxColor,
        ),
        borderRadius: BorderRadius.circular(90),
      ),
      child: const Center(
        child: Icon(
          Icons.done,
          color: AppColors.white,
          size: 11,
        ),
      ),
    );
  }
}
