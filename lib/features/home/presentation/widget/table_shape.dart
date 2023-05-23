import 'package:flutter/material.dart';
import 'package:pos_brandimic/core/manage/colors.dart';
import 'package:pos_brandimic/features/home/domain/entities/tables_entity.dart';

class TableShape extends StatelessWidget {
  final TablesEntity? tableNumber;
  const TableShape({super.key, this.tableNumber});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: tableNumber!.selected == true
              ? Border.all(color: ColorManager.button, width: 4)
              : null,
          color: ColorManager.secondaryColor,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
            child: Align(
              alignment: AlignmentDirectional.topEnd,
              child: Container(
                height: 23,
                width: 65.82,
                decoration: BoxDecoration(
                    color: tableNumber!.type == "CLOSED"
                        ? const Color.fromRGBO(222, 0, 0, 0.23)
                        : const Color.fromRGBO(66, 255, 0, 0.23),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    tableNumber!.type,
                    style: TextStyle(
                        color: tableNumber!.type == "CLOSED"
                            ? const Color(0XFFDE0000)
                            : const Color(0XFF42FF00),
                        fontWeight: FontWeight.w700,
                        fontSize: 13.52),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ),
              ),
            ),
          ),

          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //
                Flexible(
                  child: Text(
                    tableNumber!.tableNumber,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w700),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ),

                Flexible(
                  child: Text(
                    tableNumber!.chairs,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ),
                Flexible(
                  child: Text(
                    tableNumber!.time,
                    style: const TextStyle(
                        color: Color(0xffF1F1F1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ),
                const Spacer(
                  flex: 1,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
