import 'package:flutter/material.dart';
import 'package:pos_brandimic/core/widget/custom_alert_dialog.dart';
import 'package:pos_brandimic/core/widget/custom_button.dart';
import '../../../../core/manage/colors.dart';
import '../../../../core/widget/custom_decorations.dart';
import '../../../../core/widget/custom_formfield.dart';
import '../../domain/entities/items_entity.dart';
import 'list_item_ui.dart';

List tabs = [
  'الأطباق الرئيسية',
  'السندوتشات',
  'المشروبات',
  'المقبلات',
];
List<ItemEntity> itemList = [
  const ItemEntity(
      note: "test note",
      price: "120",
      qty: "2",
      title: "فاهيتا دجاج",
      total: "120",
      url: ""),
  const ItemEntity(
      note: "test note",
      price: "120",
      qty: "2",
      title: "فاهيتا دجاج",
      total: "120",
      url: ""),
  const ItemEntity(
      note: "test note",
      price: "120",
      qty: "2",
      title: "فاهيتا دجاج",
      total: "120",
      url: ""),
  const ItemEntity(
      note: "test note",
      price: "120",
      qty: "2",
      title: "فاهيتا دجاج",
      total: "120",
      url: ""),
  const ItemEntity(
      note: "test note",
      price: "120",
      qty: "2",
      title: "فاهيتا دجاج",
      total: "120",
      url: ""),
  const ItemEntity(
      note: "test note",
      price: "120",
      qty: "2",
      title: "فاهيتا دجاج",
      total: "120",
      url: ""),
  const ItemEntity(
      note: "test note",
      price: "120",
      qty: "2",
      title: "فاهيتا دجاج",
      total: "120",
      url: ""),
  const ItemEntity(
      note: "test note",
      price: "120",
      qty: "2",
      title: "فاهيتا دجاج",
      total: "120",
      url: ""),
];
var noteController = TextEditingController();
orderItemDialog(BuildContext context) {
  return customAlertDialog(
      context: context,
      body: DefaultTabController(
        length: tabs.length,
        child: SizedBox(
          width: 1100,
          height: 750,
          child: Row(
            children: [
              //
              Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      //
                      Container(
                          height: 44,
                          width: 585,
                          decoration: Decorations.createRectangleDecoration(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Flexible(
                                child: Text(
                                  "٤ أشخاص",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              Flexible(
                                child: Text(
                                  "طاولة #٩",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          )),
                      //
                      const SizedBox(
                        height: 24,
                      ),
                      //
                      Stack(
                        fit: StackFit.passthrough,
                        alignment: AlignmentDirectional.bottomStart,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: Color(0xff373A47), width: 0.8),
                              ),
                            ),
                          ),
                          TabBar(
                            indicator: UnderlineTabIndicator(
                                borderSide: BorderSide(
                                    width: 2.0, color: ColorManager.button),
                                insets: const EdgeInsets.only(top: 20)),
                            labelColor: ColorManager.button,
                            unselectedLabelColor: Colors.white,
                            indicatorPadding:
                                const EdgeInsetsDirectional.only(end: 45),
                            isScrollable: true,
                            labelPadding: const EdgeInsetsDirectional.only(
                                end: 45, bottom: 10),
                            onTap: (index) {},
                            tabs: [
                              for (int i = 0; i < tabs.length; i++)
                                Text(
                                  tabs[i],
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            for (int j = 0; j < tabs.length; j++)
                              GridView.builder(
                                  shrinkWrap: true,
                                  itemCount: itemList.length,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          childAspectRatio: 181.67 / 131,
                                          mainAxisSpacing: 20,
                                          crossAxisSpacing: 20,
                                          crossAxisCount: 3),
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {},
                                      child: ListItemUi(
                                          item: ItemEntity(
                                              title: itemList[index].title,
                                              price: itemList[index].price)),
                                    );
                                  })
                          ],
                        ),
                      )
                    ],
                  )),
              const SizedBox(width: 24),
              ///////////////////////// Second Part ///////////////////////////
              Expanded(
                  flex: 4,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: ColorManager.containerColor, width: 4),
                              color: ColorManager.secondaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    "تفاصيل الأوردر",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),

                                ///
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "ITEMS",
                                      style: TextStyle(
                                          color: Color(0xffF5F5F5),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      "السعر",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),

                                ///
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: Divider(
                                    color: ColorManager.containerColor,
                                    height: 1.5,
                                  ),
                                ),

                                ///
                                ListView.separated(
                                  primary: false,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return Dismissible(
                                      direction: DismissDirection.endToStart,
                                      background: Container(
                                          alignment:
                                              AlignmentDirectional.centerEnd,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: const Color(0xffFF0000),
                                          ),
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            child: RotatedBox(
                                              quarterTurns: 1,
                                              child: Text(
                                                "Delete",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16),
                                              ),
                                            ),
                                          )),
                                      key: ValueKey(index),
                                      onDismissed:
                                          (DismissDirection direction) {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: ColorManager.button,
                                                width: .5),
                                            color: ColorManager.secondaryColor,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              //////First part////
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: const [
                                                  Flexible(
                                                    child: Text(
                                                      "Cheese burger",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xffF5F5F5),
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Text(
                                                      "60 EGP",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xffC4C4C4),
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              ////////////Sides Part///////////////
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 12),
                                                child: Row(
                                                  children: [
                                                    const Text(
                                                      "Sides",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xffF5F5F5),
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    sideShape(title: "Fries"),
                                                  ],
                                                ),
                                              ),
                                              //////////NOTES////////
                                              Row(
                                                children: [
                                                  const Text(
                                                    "Notes",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffF5F5F5),
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      height: 25,
                                                      decoration: Decorations
                                                          .createRectangleDecoration(
                                                              radius: 5),
                                                      child: const Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 6),
                                                        child: Text(
                                                          "Fries",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xffF5F5F5),
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  itemCount: 3,
                                  separatorBuilder:
                                      (BuildContext context, int index) {
                                    return const SizedBox(
                                      height: 15,
                                    );
                                  },
                                ),
                                ////////////////////////////////////////////////////////////
                                // Options
                                const SizedBox(height: 7),
                                const Text(
                                  "Options",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                const Text(
                                  "SIDE DISHES",
                                  style: TextStyle(
                                      color: Color(0xffF5F5F5),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: Divider(
                                    color: ColorManager.containerColor,
                                    height: 5,
                                  ),
                                ),
                                ///////////////////////////////////////////////
                                GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  primary: false,
                                  shrinkWrap: true,
                                  itemCount: 5,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          childAspectRatio: 95.75 / 30,
                                          mainAxisSpacing: 16,
                                          crossAxisSpacing: 12,
                                          crossAxisCount: 4),
                                  itemBuilder: (context, index) {
                                    return containerWidget(text: "Fries");
                                  },
                                ),
                                const SizedBox(height: 8),
                                /////////////////////////////////////////////////
                                const Text(
                                  "NOTES",
                                  style: TextStyle(
                                      color: Color(0xffF5F5F5),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4),
                                  child: Divider(
                                    color: ColorManager.containerColor,
                                    height: 5,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Flexible(
                                      flex: 5,
                                      child: CustomFormField(
                                        borderRadius: 1,
                                        hintColor: const Color(0xffF5F5F5),
                                        borderColor: const Color(0xff5790C8),
                                        prefixIcon: false,
                                        hintText: "your_order_notes",
                                        obsecureText: false,
                                        maxLines: 3,
                                        textInputType: TextInputType.text,
                                        controller: noteController,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Flexible(
                                        child: CustomBottom(
                                      fontSize: 16,
                                      radius: 5,
                                      onPressed: () {},
                                      text: "save",
                                      height: 85,
                                      color: const Color(0xff5790C8),
                                    )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        CustomBottom(
                          onPressed: () {},
                          text: "done",
                          color: const Color(0xff5790C8),
                          radius: 5,
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ));
}

containerWidget({required String text}) {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff5790C8), width: 1.0),
        color: const Color(0xff2D303E),
        borderRadius: BorderRadius.circular(5)),
    child: Center(
      child: Text(
        text,
        style: const TextStyle(
            color: Color(0xffF5F5F5),
            fontSize: 16,
            fontWeight: FontWeight.w500),
      ),
    ),
  );
}

sideShape({String? title}) {
  return Flexible(
    child: Padding(
      padding: const EdgeInsetsDirectional.only(end: 8),
      child: Container(
        width: 48,
        height: 25,
        decoration: const BoxDecoration(
            color: Color(0xff5790C8),
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Center(
          child: Text(
            title!,
            style: const TextStyle(
                color: Color(0xffF5F5F5),
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
    ),
  );
}

////
// containerButt({required String text}) {
//   return Expanded(
//     child: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height: 30,
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//             border: Border.all(color: ColorManager.button, width: .5),
//             color: ColorManager.containerColor,
//             borderRadius: BorderRadius.circular(5)),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 5,
//           ),
//           child: Text(
//             text,
//             style: const TextStyle(
//                 color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
//           ),
//         ),
//       ),
//     ),
//   );
// }
