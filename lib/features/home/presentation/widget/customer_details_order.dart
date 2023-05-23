import 'package:flutter/material.dart';
import 'package:pos_brandimic/core/manage/colors.dart';
import '../../../../core/manage/valuse_manger.dart';
import '../../../../core/widget/custom_formfield.dart';
import '../../domain/entities/items_entity.dart';

class CustomerDetailsOrder extends StatelessWidget {
  CustomerDetailsOrder({Key? key, required this.itemEntity}) : super(key: key);
  final noteController = TextEditingController();
  final ItemEntity itemEntity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [

            SizedBox(
              width: AppSize.width*.16,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemEntity.title ?? "",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                 const SizedBox(height: 5,),
                  Text(
                    itemEntity.price ?? "",
                    style:   TextStyle(
                        color: ColorManager.textColor1,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xff2d303e),
                borderRadius: (BorderRadius.circular(10)),
              ),
              child: Center(
                  child: Text(itemEntity.qty ?? "",
                      style: const TextStyle(color: Colors.white))),
            ),
            // SizedBox(
            //   width: AppSize.width * .07,
            // ),
            const Spacer(),
            Container(
              alignment: Alignment.center,
              child: Text(
                itemEntity.total ?? "",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: AppSize.width,
          child: CustomFormField(
              prefixIcon: false,
              hintText: "order_note",
              obsecureText: false,
              textInputType: TextInputType.text,
              controller: noteController),
        ),
      ],
    );
  }
}
