//flutter_packages/convert_json_to_object/convert_json_to_object.dart

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable()
class Person {
  final String name;
  final String creditCardNumber;
  final DateTime birthday;

  Person({
    @required this.name,
    @required this.creditCardNumber,
    @required this.birthday,
  });

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);

  @override
  String toString() {
    return 'Person{name: $name, creditCardNumber: $creditCardNumber, birthday: $birthday}';
  }
}
