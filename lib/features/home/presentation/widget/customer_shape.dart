import 'package:flutter/material.dart';
import 'package:pos_brandimic/features/home/domain/entities/customer_entity.dart';
import 'package:pos_brandimic/features/home/presentation/widget/icon_value_row.dart';

import '../../../../core/manage/assets_manager.dart';
import '../../../../core/manage/colors.dart';

class CustomerShape extends StatelessWidget {
  const CustomerShape({Key? key, this.customerNumber}) : super(key: key);
  final CustomerEntity? customerNumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // border: customerNumber!.selected == true
          //     ? Border.all(color: ColorManager.button, width: 4)
          //     : null,
          color: ColorManager.secondaryColor,
          borderRadius: BorderRadius.circular(17)),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 18, top: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              customerNumber!.name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            RowIconAndText(
                image: ImageAssets.phone, value: customerNumber!.phone),
            RowIconAndText(
                image: ImageAssets.location, value: customerNumber!.address),
          ],
        ),
      ),
    );
  }
}
