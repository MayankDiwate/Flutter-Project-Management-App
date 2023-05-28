import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_management_app/models/card_data_state.dart';

class DetailsHeader extends StatelessWidget {
  const DetailsHeader({Key? key, required this.id}) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        const CircleAvatar(child: Icon(Icons.dashboard, size: 25), radius: 25),
        const SizedBox(height: 20),
        Text(cardData[id].title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 2),
        Text(cardData[id].subTitle,
            style: const TextStyle(
                fontSize: 16, color: Color.fromARGB(255, 116, 114, 114))),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('TEAMS'),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      for (int i = 0; i <= 2; i++) ...[
                        const CircleAvatar(
                          radius: 18,
                          child: Icon(Icons.person),
                        ),
                        const SizedBox(width: 5),
                      ],
                      CircleAvatar(
                        child: Text('+${cardData[id].teamMembers}',
                            style: const TextStyle(color: Colors.white)),
                        radius: 18,
                        backgroundColor:
                            const Color.fromARGB(255, 197, 197, 197),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  const Text('EST. DATE'),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Icon(Icons.calendar_month_sharp),
                      const SizedBox(width: 10),
                      Text(
                        DateFormat('yMMMd').format(DateTime.now()),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(width: 14),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          height: 10,
          color: Color.fromARGB(255, 119, 119, 119),
        ),
      ],
    );
  }
}
