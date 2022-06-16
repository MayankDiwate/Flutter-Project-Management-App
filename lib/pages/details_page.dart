import 'package:flutter/material.dart';
import 'package:project_management_app/widgets/details_graph.dart';
import 'package:project_management_app/widgets/details_header.dart';
import 'package:project_management_app/widgets/details_task.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
        title: const Text('Back'),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [DetailsHeader(), DetailsTask(), DetailsGraph()],
        ),
      ),
    );
  }
}
