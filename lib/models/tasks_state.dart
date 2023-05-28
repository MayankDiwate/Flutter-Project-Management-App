class Task {
  String title;
  bool _isCompleted;

  bool get isCompleted => _isCompleted;

  set isCompleted(bool val) {
    for (Task t in subtasks) {
      t.isCompleted = val;
    }
    _isCompleted = val;
  }

  List<Task> subtasks;

  Task({
    required this.title,
    isCompleted = false,
    this.subtasks = const [],
  }) : _isCompleted = isCompleted;
}

final List<Task> taskData2 = <Task>[
  Task(
    title: "Task 1",
    subtasks: [
      Task(title: 'Create user flow'),
      Task(title: 'Create wireframe'),
      Task(title: 'Transform to High-fidelity'),
    ],
  ),
  Task(
    title: "Task 2",
    subtasks: [
      Task(title: 'Create finance sheet'),
      Task(title: 'Calculate profit margins'),
      Task(title: 'Update profile'),
      Task(title: 'Create user flow sheet'),
      Task(title: 'Make payments'),
    ],
  ),
  Task(
    title: "Task 3",
    subtasks: [
      Task(title: 'Create wireframe'),
      Task(title: 'work on backend'),
      Task(title: 'Push request to main channel'),
      Task(title: 'Make changes in UI'),
    ],
  ),
];

class TaskState {
  final List<String> tasks;
  final int id;
  late bool value;

  TaskState({required this.tasks, required this.id, this.value = false});
}

final List<TaskState> taskData = <TaskState>[
  TaskState(
    id: 1,
    tasks: [
      'Create user flow',
      'Create wireframe',
      'Transform to High-fidelity',
    ],
  ),
  TaskState(
    id: 2,
    tasks: [
      'Create finance sheet',
      'Calculate profit margins',
      'Update profile',
      'Create user flow sheet',
      'make payments',
    ],
  ),
  TaskState(
    id: 3,
    tasks: [
      'Create wireframe',
      'work on backend',
      'Push request to main channel',
      'Make changes in UI',
    ],
  ),
];

Map<String, dynamic> tasks = {
  "taskData": {
    "dailytasks": [
      {
        "id": 1,
        "tasks": [
          "Create user flow",
          "Create wireframe",
          "Transform to High-fidelity",
        ]
      },
      {
        "id": 2,
        "tasks": [
          "Create finance sheet",
          "Caculate profit margins",
          "Update profile",
          "Create user flow sheet",
          "make payments",
        ]
      },
      {
        "id": 3,
        "tasks": [
          "Create user flow",
          "Create wireframe",
          "Transform to High-fidelity",
        ]
      }
    ]
  }
};
