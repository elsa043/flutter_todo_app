import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Task extends Equatable {//creating a taskmodel class
  final String title; //information about the task
  final String id;
  bool? isDone;
  bool? isDeleted;

  Task({//constructor of the task model
    required this.title,
    required this.id,
    this.isDone,
    this.isDeleted,
  }) {//here the booleans are initialised
    isDone = isDone ?? false;
    isDeleted = isDeleted ?? false;
  }

  Task copyWith({
    String? title,
    String? id,
    bool? isDone,
    bool? isDeleted,
  }) {
    return Task(
      title: title ?? this.title,
      id: id ?? this.id,
      isDone: isDone ?? this.isDone,
      isDeleted: isDeleted ?? this.isDeleted,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'id': id,
      'isDone': isDone,
      'isDeleted': isDeleted,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      title: map['title'] as String,
      id: map['id'] as String,
      isDone: map['isDone'] != null ? map['isDone'] as bool : null,
      isDeleted: map['isDeleted'] != null ? map['isDeleted'] as bool : null,
    );
  }

  @override 
  List<Object?> get props => [
    title,
    id,
    isDone,
    isDeleted,
  ];
}
