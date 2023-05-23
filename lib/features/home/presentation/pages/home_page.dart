import 'package:flutter/material.dart';

import 'package:pos_brandimic/features/home/domain/entities/items_entity.dart';
import 'package:pos_brandimic/features/home/domain/entities/tables_entity.dart';

import '../../../../core/Localization/app_localizations.dart';
import '../../../../core/manage/colors.dart';
import '../../../../core/manage/constants_manage.dart';
import '../../../../core/widget/custom_drawer.dart';
import '../../../../core/widget/custom_formfield.dart';
import '../../../../core/widget/custom_leading_heade.dart';
import '../../../../core/widget/header_home.dart';
import '../../domain/entities/customer_entity.dart';
import '../widget/add_customer.dart';
import '../widget/bottom_customer_details.dart';
import '../widget/buton_table_details.dart';
import '../widget/customer_shape.dart';
import '../widget/icon_heder_details.dart';
import '../widget/operation_widgets.dart';
import '../widget/order_item_dialog.dart';
import '../widget/table_shape.dart';
import '../widget/total_subtotal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedCount = 0;
  int selectedIndex = 0;
  int selectedCustomerCount = 0;
  int selectedCustomerIndex = 0;
  int current = 0;

  List tabs = [
    'Room1',
    'Room2',
    'Room3',
    'Room1',
    'Room2',
    'Room3',
    'Room1',
    'VIP',
  ];
  List group = [
    'Customer group 1',
    'group 2',
    'group 3',
    'group 4',
    'group 2',
    'group 3',
    'group 4',
    'VIP',
  ];
  var searchController = TextEditingController();
  List<TablesEntity> tablesList = [
    TablesEntity(
        chairs: "4 Chairs",
        tableNumber: "Table 1",
        time: "04:16:53",
        type: "OPEN",
        selected: false),
    TablesEntity(
        chairs: "4 Chairs",
        tableNumber: "Table 1",
        time: "04:16:53",
        type: "OPEN",
        selected: false),
    TablesEntity(
        chairs: "4 Chairs",
        tableNumber: "Table 1",
        time: "04:16:53",
        type: "CLOSED",
        selected: false),
    TablesEntity(
        chairs: "4 Chairs",
        tableNumber: "Table 1",
        time: "04:16:53",
        type: "CLOSED",
        selected: false),
    TablesEntity(
        chairs: "4 Chairs",
        tableNumber: "Table 1",
        time: "04:16:53",
        type: "CLOSED",
        selected: false),
    TablesEntity(
        chairs: "4 Chairs",
        tableNumber: "Table 1",
        time: "04:16:53",
        type: "CLOSED",
        selected: false),
    TablesEntity(
        chairs: "4 Chairs",
        tableNumber: "Table 1",
        time: "04:16:53",
        type: "OPEN",
        selected: false),
    TablesEntity(
        chairs: "4 Chairs",
        tableNumber: "Table 1",
        time: "04:16:53",
        type: "CLOSED",
        selected: false),
    TablesEntity(
        chairs: "4 Chairs",
        tableNumber: "Table 1",
        time: "04:16:53",
        type: "OPEN",
        selected: false)
  ];

  List<CustomerEntity> customerList = [
    CustomerEntity(
        name: "Ali Saeed Yousuf",
        phone: "01285905114",
        avilable: true,
        address: "Sadat city, 10th district Sadat city, 10th district",
        selected: false),
    CustomerEntity(
        name: "Ali Saeed Yousuf",
        phone: "01285905114",
        avilable: true,
        address: "Sadat city, 10th district Sadat city, 10th district",
        selected: false),
    CustomerEntity(
        name: "Ali Saeed Yousuf",
        phone: "01285905114",
        avilable: false,
        address: "Sadat city, 10th district Sadat city, 10th district",
        selected: false),
    CustomerEntity(
        name: "Ali Saeed Yousuf",
        phone: "01285905114",
        avilable: false,
        address: "Sadat city, 10th district Sadat city, 10th district",
        selected: false),
  ];
  @override
  void initState() {
    super.initState();
  }

  String? dropdownTable = "dine_in";
  @override
  void didChangeDependencies() {
    for (var element in tablesList) {
      if (element.selected == true) {
        selectedCount++;
      }
    }
    for (var element in customerList) {
      if (element.selected == true) {
        selectedCustomerCount++;
      }
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: dropdownTable == "dine_in" ? tabs.length : group.length,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorManager.background,
          body: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //////////////////////////////////// # Section 1 //////////////////////////////////////////
              const CustomDrawer(),
              //////////////////////////////////// # Section 2 //////////////////////////////////////////
              Expanded(
                flex: 17,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
                  child: Column(
                    children: [
                      CustomHeader(),
                      const SizedBox(
                        height: 30,
                      ),
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
                          dropdownTable == "dine_in"
                              ? TabBar(
                                  indicator: UnderlineTabIndicator(
                                      borderSide: BorderSide(
                                          width: 2.0,
                                          color: ColorManager.button),
                                      insets: const EdgeInsets.only(top: 20)),
                                  labelColor: ColorManager.button,
                                  unselectedLabelColor: Colors.white,
                                  indicatorPadding:
                                      const EdgeInsetsDirectional.only(end: 30),
                                  isScrollable: true,
                                  labelPadding:
                                      const EdgeInsetsDirectional.only(
                                          end: 30, bottom: 10),
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
                              : TabBar(
                                  indicator: UnderlineTabIndicator(
                                      borderSide: BorderSide(
                                          width: 2.0,
                                          color: ColorManager.button),
                                      insets: const EdgeInsets.only(top: 20)),
                                  labelColor: ColorManager.button,
                                  unselectedLabelColor: Colors.white,
                                  indicatorPadding:
                                      const EdgeInsetsDirectional.only(end: 30),
                                  isScrollable: true,
                                  labelPadding:
                                      const EdgeInsetsDirectional.only(
                                          end: 30, bottom: 10),
                                  onTap: (index) {},
                                  tabs: [
                                    for (int i = 0; i < group.length; i++)
                                      Text(
                                        group[i],
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                  ],
                                ),
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      dropdownTable == "dine_in"
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .translate("choose_table"),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 21,
                                        fontWeight: FontWeight.w600),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: true,
                                  ),
                                ),
                                Container(
                                  width: 117.41,
                                  height: 43,
                                  decoration: BoxDecoration(
                                    color: ColorManager.secondaryColor,
                                    borderRadius: BorderRadius.circular(8.5),
                                    border: Border.all(
                                        color: const Color(0xff595862),
                                        width: 0.3),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButtonFormField(
                                      decoration: const InputDecoration(
                                        isDense: true,
                                        prefixIcon: Icon(
                                          Icons.keyboard_arrow_down,
                                          color: Colors.white,
                                          size: 24,
                                        ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                      ),
                                      isDense: true,
                                      isExpanded: true,
                                      dropdownColor:
                                          ColorManager.secondaryColor,
                                      borderRadius: BorderRadius.circular(8.5),
                                      elevation: 0,
                                      focusColor: Colors.white,
                                      iconSize: 0.0,
                                      value: dropdownTable,
                                      items:
                                          Constants.items.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(
                                            AppLocalizations.of(context)!
                                                .translate(items),
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: true,
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (newValue) {
                                        setState(() {
                                          dropdownTable = newValue!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //Add customer
                                Flexible(child: AddCustomerData()),
                                //
                                Flexible(
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: SizedBox(
                                          width: 201.52,
                                          height: 43,
                                          child: CustomFormField(
                                              prefixIcon: true,
                                              hintText: "search_for_customers",
                                              obsecureText: false,
                                              textInputType: TextInputType.text,
                                              controller: searchController),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 24,
                                      ),
                                      Container(
                                        width: 140,
                                        height: 43,
                                        decoration: BoxDecoration(
                                          color: ColorManager.secondaryColor,
                                          borderRadius:
                                              BorderRadius.circular(8.5),
                                          border: Border.all(
                                              color: const Color(0xff595862),
                                              width: 0.3),
                                        ),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButtonFormField(
                                            decoration: const InputDecoration(
                                              isDense: true,
                                              prefixIcon: Icon(
                                                Icons.keyboard_arrow_down,
                                                color: Colors.white,
                                                size: 24,
                                              ),
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                            ),
                                            isDense: true,
                                            isExpanded: true,
                                            dropdownColor:
                                                ColorManager.secondaryColor,
                                            borderRadius:
                                                BorderRadius.circular(8.5),
                                            elevation: 0,
                                            focusColor: Colors.white,
                                            iconSize: 0.0,
                                            value: dropdownTable,
                                            items: Constants.items
                                                .map((String items) {
                                              return DropdownMenuItem(
                                                value: items,
                                                child: Text(
                                                  AppLocalizations.of(context)!
                                                      .translate(items),
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  softWrap: true,
                                                ),
                                              );
                                            }).toList(),
                                            onChanged: (newValue) {
                                              setState(() {
                                                dropdownTable = newValue!;
                                              });
                                            },
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                      const SizedBox(
                        height: 15,
                      ),
                      dropdownTable == "dine_in"
                          ? Expanded(
                              child: TabBarView(
                                children: [
                                  for (int j = 0; j < tabs.length; j++)
                                    GridView.builder(
                                        shrinkWrap: true,
                                        itemCount: tablesList.length,
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                childAspectRatio:
                                                    202.82 / 162.25,
                                                mainAxisSpacing: 40,
                                                crossAxisSpacing: 40,
                                                crossAxisCount: 3),
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: () {
                                              setState(() {
                                                selectedIndex = index;
                                                //
                                                tablesList[index].selected =
                                                    true;
                                                //
                                                selectedCount = 0;
                                                for (int i = 0;
                                                    i < tablesList.length;
                                                    i++) {
                                                  if (index != i) {
                                                    tablesList[i].selected =
                                                        false;
                                                  }

                                                  if (tablesList[i].selected ==
                                                      true) {
                                                    selectedCount++;
                                                  }
                                                }
                                                //
                                              });
                                            },
                                            child: TableShape(
                                                tableNumber: TablesEntity(
                                                    chairs: tablesList[index]
                                                        .chairs,
                                                    tableNumber:
                                                        tablesList[index]
                                                            .tableNumber,
                                                    time:
                                                        tablesList[index].time,
                                                    type:
                                                        tablesList[index].type,
                                                    selected: tablesList[index]
                                                        .selected)),
                                          );
                                        })
                                ],
                              ),
                            )
                          : Expanded(
                              child: TabBarView(
                                children: [
                                  for (int j = 0; j < group.length; j++)
                                    GridView.builder(
                                        shrinkWrap: true,
                                        itemCount: customerList.length,
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                childAspectRatio: 322 / 156,
                                                mainAxisSpacing: 30,
                                                crossAxisSpacing: 30,
                                                crossAxisCount: 2),
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: () {
                                              setState(() {
                                                selectedCustomerIndex = index;
                                                //
                                                customerList[index].selected =
                                                    true;
                                                //
                                                selectedCustomerCount = 0;
                                                for (int i = 0;
                                                    i < customerList.length;
                                                    i++) {
                                                  if (index != i) {
                                                    customerList[i].selected =
                                                        false;
                                                  }

                                                  if (customerList[i]
                                                          .selected ==
                                                      true) {
                                                    selectedCustomerCount++;
                                                  }
                                                }
                                                //
                                              });
                                            },
                                            child: CustomerShape(
                                              customerNumber: CustomerEntity(
                                                  name:
                                                      customerList[index].name,
                                                  phone:
                                                      customerList[index].phone,
                                                  address: customerList[index]
                                                      .address,
                                                  avilable: customerList[index]
                                                      .avilable,
                                                  selected: tablesList[index]
                                                      .selected),
                                            ),
                                          );
                                        })
                                ],
                              ),
                            ),
                    ],
                  ),
                ),
              ),
              //////////////////////////////////// # Section 3 //////////////////////////////////////////
              dropdownTable == "dine_in"
                  ? Expanded(
                      flex: 10,
                      child: Container(
                          color: ColorManager.secondaryColor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: selectedCount != 0
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            physics:
                                                const BouncingScrollPhysics(),
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
                                                      duration: const Duration(
                                                          milliseconds: 300),
                                                      margin:
                                                          const EdgeInsetsDirectional
                                                              .only(end: 10.0),
                                                      width: 70.51,
                                                      height: 36,
                                                      decoration: BoxDecoration(
                                                          color: current ==
                                                                  index
                                                              ? ColorManager
                                                                  .button
                                                              : const Color(
                                                                  0xff1F1D2B),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: current ==
                                                                  index
                                                              ? null
                                                              : Border.all(
                                                                  color: const Color(
                                                                      0xff595862),
                                                                  width: 0.3)),
                                                      child: Center(
                                                        child: Text(
                                                          AppLocalizations.of(
                                                                  context)!
                                                              .translate(
                                                                  Constants
                                                                          .items[
                                                                      index]),
                                                          style: TextStyle(
                                                              fontSize: 14.88,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .normal,
                                                              color: current ==
                                                                      index
                                                                  ? Colors.white
                                                                  : ColorManager
                                                                      .button),
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
                                      const CustomHeadLeading(ispay: false),
                                      tablesList[selectedIndex].type == "OPEN"
                                          ? const Divider(
                                              color: Color(0xff393C49),
                                              thickness: 0.8,
                                            )
                                          : const SizedBox(),
                                      tablesList[selectedIndex].type == "OPEN"
                                          ? Expanded(
                                              // height: AppSize.height / 2.5,
                                              child: ListView.separated(
                                                itemCount: 20,
                                                itemBuilder: (context, index) {
                                                  return TableDetailsWidget(
                                                      itemEntity:
                                                          const ItemEntity(
                                                    price: "2.69",
                                                    note: "hello",
                                                    qty: "5",
                                                    title:
                                                        "Salted pasta with mu.. ",
                                                    total: "10.47",
                                                    url:
                                                        "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
                                                  ));
                                                },
                                                separatorBuilder:
                                                    (BuildContext context,
                                                            int index) =>
                                                        const SizedBox(
                                                  height: 10,
                                                ),
                                              ),
                                            )
                                          : const Expanded(
                                              child: SizedBox(),
                                            ),

                                      ///
                                      const TotalAndSubTotal(),

                                      ButTableDescription(onPressedAdd: () {
                                        tablesList[selectedIndex].type == "OPEN"
                                            ? orderItemDialog(context)
                                            : onTapAddCustomerToTable(context);
                                      }),
                                    ],
                                  )
                                : Center(
                                    child: Text(
                                        AppLocalizations.of(context)!
                                            .translate("select_table"),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 21.26,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w600)),
                                  ),
                          )),
                    )
                  : Expanded(
                      flex: 10,
                      child: Container(
                          color: ColorManager.secondaryColor,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: selectedCustomerCount != 0
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                            physics:
                                                const BouncingScrollPhysics(),
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
                                                      duration: const Duration(
                                                          milliseconds: 300),
                                                      margin:
                                                          const EdgeInsetsDirectional
                                                              .only(end: 10.0),
                                                      width: 70.51,
                                                      height: 36,
                                                      decoration: BoxDecoration(
                                                          color: current ==
                                                                  index
                                                              ? ColorManager
                                                                  .button
                                                              : const Color(
                                                                  0xff1F1D2B),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: current ==
                                                                  index
                                                              ? null
                                                              : Border.all(
                                                                  color: const Color(
                                                                      0xff595862),
                                                                  width: 0.3)),
                                                      child: Center(
                                                        child: Text(
                                                          AppLocalizations.of(
                                                                  context)!
                                                              .translate(
                                                                  Constants
                                                                          .items[
                                                                      index]),
                                                          style: TextStyle(
                                                              fontSize: 14.88,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .normal,
                                                              color: current ==
                                                                      index
                                                                  ? Colors.white
                                                                  : ColorManager
                                                                      .button),
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

                                      const CustomHeadLeading(ispay: false),
                                      customerList[selectedCustomerIndex]
                                                  .avilable ==
                                              true
                                          ? const Divider(
                                              color: Color(0xff393C49),
                                              thickness: 0.8,
                                            )
                                          : const SizedBox(),
                                      customerList[selectedCustomerIndex]
                                                  .avilable ==
                                              true
                                          ? Expanded(
                                              child: ListView.separated(
                                                padding:
                                                    const EdgeInsets.all(0.0),
                                                itemCount: 20,
                                                itemBuilder: (context, index) {
                                                  return TableDetailsWidget(
                                                      itemEntity:
                                                          const ItemEntity(
                                                    price: "2.69",
                                                    note: "hello",
                                                    qty: "5",
                                                    title:
                                                        "Salted pasta with mu.. ",
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
                                                    (BuildContext context,
                                                            int index) =>
                                                        const SizedBox(
                                                  height: 10,
                                                ),
                                              ),
                                            )
                                          : const Expanded(
                                              child: SizedBox(),
                                            ),

                                      ///
                                      const TotalAndSubTotal(),
                                      const BottomAddCustomerDetails(),
                                    ],
                                  )
                                : Center(
                                    child: Text(
                                        AppLocalizations.of(context)!
                                            .translate("select_table"),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 21.26,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w600)),
                                  ),
                          )),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
