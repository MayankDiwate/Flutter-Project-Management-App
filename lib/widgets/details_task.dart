import 'package:flutter/material.dart';
import 'package:project_management_app/utils/checkbox_state.dart';

class DetailsTask extends StatefulWidget {
  const DetailsTask({Key? key}) : super(key: key);

  @override
  State<DetailsTask> createState() => _DetailsTaskState();
}

class _DetailsTaskState extends State<DetailsTask> {
  final tasks = [
    CheckBoxState(title: 'Create user flow'),
    CheckBoxState(title: 'Create wireframe'),
    CheckBoxState(title: 'Transform to High-fidelity'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Your Tasks',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text('1/3 Completed',
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 138, 138, 138))),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.26,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListView(
                children: [
                  ...tasks.map(_buildListTile).toList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(CheckBoxState checkbox) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: ListTile(
          tileColor: const Color.fromARGB(255, 209, 209, 209),
          leading: Checkbox(
              activeColor: Colors.green,
              onChanged: (val) {
                setState(() {
                  checkbox.value = val!;
                });
              },
              value: checkbox.value),
          title: checkbox.value
              ? Text(
                  checkbox.title,
                  style:
                      const TextStyle(decoration: TextDecoration.lineThrough),
                )
              : Text(checkbox.title),
          trailing: const Icon(Icons.menu),
        ),
      );
}
