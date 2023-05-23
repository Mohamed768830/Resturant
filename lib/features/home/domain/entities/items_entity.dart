import 'package:equatable/equatable.dart';

// Compare objects
// LET THE SAME CLASS THE SAME HASHCODE
// THE PROBLEM WAS EACH OBJECT TAKE DIFFERENT HASHCODE !!!!!!!!!!!!!!!
class ItemEntity extends Equatable {
  final String? url;
  final String? title;
  final String? price;
  final String? total;
  final String? note;
  final String? qty;

  const ItemEntity(
      {this.note, this.price, this.qty, this.title, this.total, this.url});

  @override
  List<Object?> get props => [url, price, note, qty, title, total];
}
// interate with presentaion layer
