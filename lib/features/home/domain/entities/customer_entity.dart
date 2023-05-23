import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class CustomerEntity extends Equatable {
  String name;
  String phone;
  String address;
  bool avilable;
  bool selected;

  CustomerEntity(
      {required this.name,
      required this.phone,
      required this.address,
      required this.avilable,
      required this.selected});

  @override
  List<Object?> get props => [name, phone, address, avilable, selected];
}
