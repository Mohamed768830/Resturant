// import 'package:flutter/material.dart';
// import 'package:pos_brandimic/core/Localization/app_localizations.dart';

// import '../manage/colors.dart';
// import '../manage/constants_manage.dart';

// class CustomDropdown extends StatefulWidget {
//   String dropdownTable = Constants.items.first;

//   CustomDropdown({Key? key, required this.dropdownTable}) : super(key: key);
//   @override
//   State<CustomDropdown> createState() => _CustomDropdownState();
// }

// class _CustomDropdownState extends State<CustomDropdown> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 117.41,
//       height: 43,
//       decoration: BoxDecoration(
//         color: ColorManager.secondaryColor,
//         borderRadius: BorderRadius.circular(8.5),
//         border: Border.all(color: const Color(0xff595862), width: 0.3),
//       ),
//       child: DropdownButtonHideUnderline(
//         child: DropdownButtonFormField(
//           decoration: const InputDecoration(
//             isDense: true,
//             prefixIcon: Icon(
//               Icons.keyboard_arrow_down,
//               color: Colors.white,
//               size: 24,
//             ),
//             enabledBorder: InputBorder.none,
//             focusedBorder: InputBorder.none,
//           ),
//           isDense: true,
//           isExpanded: true,
//           dropdownColor: ColorManager.secondaryColor,
//           borderRadius: BorderRadius.circular(8.5),
//           elevation: 0,
//           focusColor: Colors.white,
//           iconSize: 0.0,
//           value: widget.dropdownTable,
//           items: Constants.items.map((String items) {
//             return DropdownMenuItem(
//               value: items,
//               child: Text(
//                 AppLocalizations.of(context)!.translate(items),
//                 style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 18,
//                     fontWeight: FontWeight.w500),
//                 maxLines: 1,
//                 overflow: TextOverflow.ellipsis,
//                 softWrap: true,
//               ),
//             );
//           }).toList(),
//           onChanged: (String? newValue) {
//             setState(() {
//               widget.dropdownTable = newValue!;
//             });
//           },
//         ),
//       ),
//     );
//   }
// }
