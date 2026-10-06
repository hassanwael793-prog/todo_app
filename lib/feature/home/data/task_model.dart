import 'package:hive/hive.dart';

part 'task_model.g.dart'; // ده ملف الـ TypeAdapter اللي هيتولد تلقائي

@HiveType(typeId: 1) // تأكد إن الـ typeId مش متكرر مع UserModel (لو الـ UserModel واخد 0، ده ياخد 1)
class TaskModel extends HiveObject {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final String subtitle;

  @HiveField(2)
  final String status;

  @HiveField(3)
  final int color;

  TaskModel({
    required this.title,
    required this.subtitle,
    required this.status,
    required this.color,
  });
}