import 'dart:convert';

class Student {
  int id;
  String name;
  String email;
  String mobile;
  int status;
  DateTime createdAt;

  Student({
    this.id,
    this.name,
    this.email,
    this.mobile,
    this.status,
    this.createdAt,
  });

  factory Student.fromJson(Map<String, dynamic> json){
    return Student(
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      mobile: json['mobile'] as String,
      status: json['status'] as int,
      createdAt: json['createdAt'] as DateTime,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'email': email,
    'mobile': mobile,
    'status': status,
    'createdAt': createdAt,
  };
}
