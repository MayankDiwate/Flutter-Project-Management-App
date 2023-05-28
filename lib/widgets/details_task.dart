// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:project_management_app/models/tasks_state.dart';

class DetailsTask extends StatefulWidget {
  const DetailsTask({Key? key, required this.id}) : super(key: key);

  final int id;

  @override
  State<DetailsTask> createState() => _DetailsTaskState();
}

int completedTasks = 0;

class _DetailsTaskState extends State<DetailsTask> {
  // @override
  // void initState() {
  //   super.initState();
  //   // completedTasks;
  //   if (taskData2[widget.id].isCompleted == true) {
  //     // setState(() {
  //     completedTasks ==
  //         taskData2[widget.id]
  //             .subtasks
  //             .where((element) => element.isCompleted)
  //             .length;
  //     // });
  //   }
  // }

  void addTask(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Your Tasks',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text(
                  '$completedTasks/${taskData2[widget.id].subtasks.length} Completed',
                  style: const TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 138, 138, 138))),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.26,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: completedTasks != taskData2[widget.id].subtasks.length
                  ? ListView.builder(
                      itemCount: taskData2[widget.id].subtasks.length,
                      // separatorBuilder: (_, i) => const Divider(thickness: 2),
                      itemBuilder: (_, i) {
                        return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: CheckboxListTile(
                              activeColor: Colors.green,
                              checkColor: Colors.white,
                              onChanged: (e) {
                                setState(() {
                                  taskData2[widget.id].subtasks[i].isCompleted =
                                      e!;
                                });
                                addTask(() {
                                  if (taskData2[widget.id]
                                          .subtasks[i]
                                          .isCompleted ==
                                      true) {
                                    if (completedTasks <
                                        taskData2[widget.id].subtasks.length) {
                                      completedTasks += 1;
                                    }
                                  } else {
                                    if (completedTasks > 0) {
                                      completedTasks -= 1;
                                    }
                                  }
                                });
                              },
                              value:
                                  taskData2[widget.id].subtasks[i].isCompleted,
                              // value: taskData[widget.id].value,
                              controlAffinity: ListTileControlAffinity.leading,
                              title: taskData2[widget.id]
                                      .subtasks[i]
                                      .isCompleted
                                  ? Text(
                                      taskData2[widget.id]
                                          .subtasks[i]
                                          .title
                                          .toString(),
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey[700],
                                      ),
                                    )
                                  : Text(taskData2[widget.id]
                                      .subtasks[i]
                                      .title
                                      .toString()),

                              // title: taskData[widget.id].value
                              //     ? Text(
                              //         taskData[widget.id].tasks[i],
                              //         style: TextStyle(
                              //           decoration: TextDecoration.lineThrough,
                              //           color: Colors.grey[700],
                              //         ),
                              //       )
                              //     : Text(taskData[widget.id].tasks[i]),
                            ));
                      },
                    )
                  : const Icon(Icons.done, size: 50, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
//   Widget _buildListTile(TaskState checkbox) => Padding(
//         padding: const EdgeInsets.symmetric(vertical: 5),
//         child: ListTile(
//           tileColor: const Color.fromARGB(255, 209, 209, 209),
//           leading: Checkbox(
//               activeColor: Colors.green,
//               onChanged: (val) {
//                 setState(() {
//                   checkbox.value = val!;
//                 });
//               },
//               value: checkbox.value),
//           title: checkbox.value
//               ? Text(
//                   checkbox.title,
//                   style:
//                       const TextStyle(decoration: TextDecoration.lineThrough),
//                 )
//               : Text(checkbox.title),
//           trailing: const Icon(Icons.menu),
//         ),
//       );
// }
