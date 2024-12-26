class SelectableItemEntity {
  final String id;
  final String text;
  final String question;
  final String iconPath;
  bool isSelected;

  SelectableItemEntity({
    required this.id,
    required this.text,
    required this.question,
    required this.iconPath,
    required this.isSelected,
  });
}
