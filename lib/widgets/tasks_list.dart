import 'package:flutter/material.dart';
//import '../blocs/bloc_exports.dart';

import '../models/task.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
    required this.taskList,
  }) : super(key: key);

  final List<Task> taskList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: taskList.length,
          itemBuilder: (context, index) {
            var task = taskList[index];
            return TaskTile(task: task);
          }),
    );
  }
}

