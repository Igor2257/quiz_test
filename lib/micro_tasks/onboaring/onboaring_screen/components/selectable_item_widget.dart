part of '../onboarding_screen.dart';

class SelectableItemWidget extends StatelessWidget {
  const SelectableItemWidget({super.key, required this.item});

  final SelectableItemEntity item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.borderColor.withOpacity(0.7),
        ),
        color: AppColors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            item.iconPath,
            width: 28,
            height: 28,
          ),
          const SizedBox(width: 10),
          Text(item.text),
          const Spacer(),
          CustomCheckBox(isSelected: item.isSelected),
        ],
      ),
    );
  }
}
