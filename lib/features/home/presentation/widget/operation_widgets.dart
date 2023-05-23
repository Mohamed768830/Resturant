import 'package:flutter/material.dart';
import 'package:pos_brandimic/core/manage/valuse_manger.dart';
import 'package:pos_brandimic/core/widget/custom_formfield.dart';
import '../../../../core/manage/assets_manager.dart';
import '../../domain/entities/items_entity.dart';

class TableDetailsWidget extends StatelessWidget {
  final ItemEntity itemEntity;
  final noteController = TextEditingController();

  TableDetailsWidget({super.key, required this.itemEntity});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 3,
              child: ListTile(
                contentPadding: const EdgeInsets.all(0.0),
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(itemEntity.url.toString()),
                ),
                title: Text(
                  itemEntity.title.toString(),
                  style: const TextStyle(
                    color: Color(0xffFAFAFA),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
                subtitle: Text(
                  "\$ ${itemEntity.price}",
                  style: const TextStyle(
                    color: Color(0xff889898),
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0,
                    fontStyle: FontStyle.normal,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
                trailing: Container(
                  width: 51,
                  height: 51,
                  decoration: BoxDecoration(
                    color: const Color(0xff2d303e),
                    borderRadius: (BorderRadius.circular(8)),
                    border:
                        Border.all(color: const Color(0xff595862), width: 0.3),
                  ),
                  child: Center(
                      child: Text(itemEntity.qty.toString(),
                          style: const TextStyle(
                              color: Color(0xff889898),
                              fontSize: 16,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w500))),
                ),
              ),
            ),
            Flexible(
              child: Text(
                "\$ ${itemEntity.total}",
                style: const TextStyle(
                    color: Color(0xffE0E6E9),
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: AppSize.width*.22,
              child: CustomFormField(
                  prefixIcon: false,
                  hintText: "order_note",
                  obsecureText: false,
                  textInputType: TextInputType.text,
                  controller: noteController),
            ),
            const Spacer(),
            Image.asset(
              ImageAssets.delete,
              width: 51,
              height: 51,
            )
          ],
        )
      ],
    );
  }
}
