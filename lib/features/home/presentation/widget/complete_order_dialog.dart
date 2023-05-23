import 'package:flutter/material.dart';
import 'package:pos_brandimic/core/Localization/app_localizations.dart';
import '../../../../core/manage/colors.dart';
import '../../../../core/manage/constants_manage.dart';
import '../../../../core/widget/custom_button.dart';
import '../../../../core/widget/custom_leading_heade.dart';
import '../../domain/entities/items_entity.dart';
import 'customer_details_order.dart';

class CompleteOrderDialog extends StatefulWidget {
  const CompleteOrderDialog({Key? key}) : super(key: key);

  @override
  State<CompleteOrderDialog> createState() => _CompleteOrderDialogState();
}

class _CompleteOrderDialogState extends State<CompleteOrderDialog> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorManager.secondaryColor,
      appBar: AppBar(
        backgroundColor: ColorManager.secondaryColor,
        elevation: 0,
      ),
      body: Row(
        children: [
          Expanded(
            flex: 5,
            child: Container(
                color: ColorManager.secondaryColor,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Order #34562",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 21.26,
                                fontWeight: FontWeight.w600)),
                        const SizedBox(
                          height: 18,
                        ),

                        // heade leading
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ListView.builder(
                              physics: const BouncingScrollPhysics(),
                              itemCount: Constants.items.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (ctx, index) {
                                return Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          current = index;
                                        });
                                      },
                                      child: AnimatedContainer(
                                        duration:
                                            const Duration(milliseconds: 300),
                                        margin:
                                            const EdgeInsetsDirectional.only(
                                                end: 10.0),
                                        width: 70.51,
                                        height: 36,
                                        decoration: BoxDecoration(
                                            color: current == index
                                                ? ColorManager.button
                                                : const Color(0xff1F1D2B),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: current == index
                                                ? null
                                                : Border.all(
                                                    color:
                                                        const Color(0xff595862),
                                                    width: 0.3)),
                                        child: Center(
                                          child: Text(
                                            AppLocalizations.of(context)!
                                                .translate(
                                                    Constants.items[index]),
                                            style: TextStyle(
                                                fontSize: 14.88,
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.normal,
                                                color: current == index
                                                    ? Colors.white
                                                    : ColorManager.button),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const CustomHeadLeading(ispay: true),
                        const Divider(
                          color: Color(0xff393C49),
                          thickness: 0.8,
                        ),

                        Expanded(
                          child: ListView.separated(
                            padding: const EdgeInsets.all(0.0),
                            itemCount: 20,
                            itemBuilder: (context, index) {
                              return CustomerDetailsOrder(
                                  itemEntity: const ItemEntity(
                                price: "2.69",
                                note: "hello",
                                qty: "5",
                                title: "Salted pasta with mu.. ",
                                total: "10.47",
                                url:
                                    "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
                              ));
                              /* CustomerDetailsOrder(
                                                      itemEntity:
                                                          const ItemEntity(
                                                    price: "5.69",
                                                    note: "hello world ",
                                                    qty: "5",
                                                    title:
                                                        "Salted pasta with mu messsssssssss.. ",
                                                    total: "22.47",
                                                    url:
                                                        "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
                                                  ));*/
                            },
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const SizedBox(
                              height: 10,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomBottom(text: "edit_order", onPressed: () {}),
                      ],
                    ))),
          ),
          Expanded(
              flex: 6,
              child: Column(
                children: [],
              )),
        ],
      ),
    );
  }
}
