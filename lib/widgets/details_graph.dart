import 'package:flutter/material.dart';

class DetailsGraph extends StatelessWidget {
  const DetailsGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Working Hours',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Row(
                children: const [
                  Text('Week',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(width: 10),
                  Text('Month', style: TextStyle(fontSize: 18)),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text.rich(
            TextSpan(
              text: '8.9%',
              style: TextStyle(fontSize: 20),
              children: [
                TextSpan(
                  text: ' from prev. week',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.17,
              width: MediaQuery.of(context).size.width,
              color: Colors.yellow,
              child: const Center(child: Text('Weekly Graph')),
            ),
          ),
        ],
      ),
    );
  }
}
