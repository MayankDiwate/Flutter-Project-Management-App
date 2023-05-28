import 'package:flutter/material.dart';

class DetailsGraph extends StatefulWidget {
  const DetailsGraph({Key? key}) : super(key: key);

  @override
  State<DetailsGraph> createState() => _DetailsGraphState();
}

class _DetailsGraphState extends State<DetailsGraph> {
  bool changed = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Working Hours',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        changed = true;
                      });
                    },
                    child: const Text(
                      'Week',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        changed = true;
                        changed = !changed;
                      });
                    },
                    child: const Text(
                      'Month',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ],
          ),
          // const SizedBox(height: 8),
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
          const SizedBox(height: 5),
          changed
              ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.17,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        'Weekly Graph',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.17,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.yellow,
                    child: const Center(
                      child: Text(
                        'Monthly Graph',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
