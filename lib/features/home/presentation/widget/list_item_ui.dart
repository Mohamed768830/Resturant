import 'package:flutter/material.dart';

import '../../../../core/manage/colors.dart';
import '../../domain/entities/items_entity.dart';

class ListItemUi extends StatelessWidget {
  const ListItemUi({Key? key, required this.item}) : super(key: key);
  final ItemEntity item;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: ColorManager.button, width: 1),
          color: ColorManager.containerColor,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              item.title ?? "",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "${item.price} جنيه ",
              style: const TextStyle(
                  color: Color(0xffC4C4C4),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
