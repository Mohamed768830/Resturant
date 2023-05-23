import 'package:equatable/equatable.dart';

class AuthEntity extends Equatable {
  final int? id;
  final String? title;
  final String? body;
  const AuthEntity({this.body, this.id, this.title});

  @override
  List<Object?> get props => [id, title, body];
}
