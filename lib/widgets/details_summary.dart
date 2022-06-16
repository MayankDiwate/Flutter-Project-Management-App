import 'package:flutter/material.dart';

class HomeSummary extends StatelessWidget {
  const HomeSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Task Summary',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 122, 190, 123),
                              Color.fromARGB(255, 54, 179, 58),
                              Color.fromARGB(255, 11, 170, 16),
                            ]),
                      ),
                      // height: MediaQuery.of(context).size.height * 0.12,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Complete'),
                            SizedBox(height: 23),
                            Text(
                              '86',
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 252, 202, 127),
                              Color.fromARGB(255, 250, 185, 87),
                              Color.fromARGB(255, 255, 170, 43),
                            ]),
                      ),
                      // height: MediaQuery.of(context).size.height * 0.12,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('On Progrss'),
                            SizedBox(height: 23),
                            Text(
                              '16',
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 231, 108, 149),
                              Color.fromARGB(255, 250, 86, 141),
                              Color.fromARGB(255, 235, 30, 98),
                            ]),
                      ),
                      // height: MediaQuery.of(context).size.height * 0.1,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Overdue'),
                            SizedBox(height: 23),
                            Text(
                              '0',
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'On-time Completion Rate',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 10),
                        Text.rich(TextSpan(
                            text: '99%',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 35),
                            children: [
                              TextSpan(
                                text: ' 0.6%',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.green),
                              )
                            ]))
                      ],
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 5, right: 5),
                        child: Container(
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.red,
                          ),
                          child: const Center(child: Text('Graph')),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
