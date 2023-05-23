import 'package:equatable/equatable.dart';

// Compare objects
// LET THE SAME CLASS THE SAME HASHCODE
// THE PROBLEM WAS EACH OBJECT TAKE DIFFERENT HASHCODE !!!!!!!!!!!!!!!
// ignore: must_be_immutable
class TablesEntity extends Equatable {
  String chairs;
  String tableNumber;
  String time;
  String type;
  bool selected;

  TablesEntity(
      {required this.chairs,
      required this.tableNumber,
      required this.time,
      required this.type,
      required this.selected});

  @override
  List<Object?> get props => [chairs, tableNumber, time, type, selected];
}
// interate with presentaion layer
