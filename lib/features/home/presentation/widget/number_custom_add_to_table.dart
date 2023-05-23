import 'package:flutter/material.dart';
import 'package:pos_brandimic/core/Localization/app_localizations.dart';
import 'package:pos_brandimic/core/manage/colors.dart';
import 'package:pos_brandimic/core/manage/constants_manage.dart';


class CustomAddToTable extends StatefulWidget {
  const CustomAddToTable({Key? key}) : super(key: key);

  @override
  State<CustomAddToTable> createState() => _CustomAddToTableState();
}

class _CustomAddToTableState extends State<CustomAddToTable> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 30,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: Constants.itemsCountCustomer.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      current = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.all(5),
                    width: 70.51,
                    height: 20,

                    child: Text(
                      AppLocalizations.of(context)!
                          .translate(Constants.itemsCountCustomer[index]),
                      style: TextStyle(
                          fontSize:13.2,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          color: current == index
                              ? ColorManager.button
                              : Colors.white),
                    ),
                  ),
                ),

              ],
            );
          }),
    );
  }
}
