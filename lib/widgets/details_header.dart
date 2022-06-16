import 'package:flutter/material.dart';

class DetailsHeader extends StatelessWidget {
  const DetailsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        const CircleAvatar(child: Icon(Icons.dashboard, size: 25), radius: 25),
        const SizedBox(height: 20),
        const Text('Jumbo Dashboard',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 2),
        const Text('First Privacy Assistant Platform',
            style: TextStyle(
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
                      const CircleAvatar(
                        child:
                            Text('+3', style: TextStyle(color: Colors.white)),
                        radius: 18,
                        backgroundColor: Color.fromARGB(255, 197, 197, 197),
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
                    children: const [
                      Icon(Icons.calendar_month_sharp),
                      SizedBox(width: 10),
                      Text(
                        'March 30, 2019',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 14),
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
