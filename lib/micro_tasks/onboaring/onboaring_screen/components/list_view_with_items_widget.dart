part of '../onboarding_screen.dart';

class ListViewWithItemsWidget extends StatelessWidget {
  const ListViewWithItemsWidget({super.key, required this.list});

  final List<SelectableItemEntity> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: list.length,itemBuilder: (context, position) {
      return SelectableItemWidget(item: list[position]);
    });
  }
}
