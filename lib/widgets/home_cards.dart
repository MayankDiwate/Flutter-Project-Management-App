import 'package:flutter/material.dart';
import 'package:project_management_app/pages/details_page.dart';
import 'package:intl/intl.dart';

import '../models/card_data_state.dart';

class HomeCards extends StatefulWidget {
  const HomeCards({Key? key}) : super(key: key);

  @override
  State<HomeCards> createState() => _HomeCardsState();
}

PageController _controller = PageController();

class _HomeCardsState extends State<HomeCards> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.9,
      child: PageView.builder(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        itemCount: cardData.length,
        itemBuilder: (_, id) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => DetailsPage(i: id)));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(child: Icon(cardData[id].icons)),
                      title: Text(cardData[id].title),
                      subtitle: Text(cardData[id].subTitle),
                    ),
                    const Divider(
                      indent: 20,
                      endIndent: 20,
                      color: Color.fromARGB(255, 179, 179, 179),
                      thickness: 0.8,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('TEAMS'),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      for (int i = 0; i <= 1; i++) ...[
                                        const CircleAvatar(
                                          radius: 18,
                                          child: Icon(Icons.person),
                                        ),
                                        const SizedBox(width: 5),
                                      ],
                                      CircleAvatar(
                                        child: Text(
                                            "+${cardData[id].teamMembers}"),
                                        radius: 18,
                                        backgroundColor: Colors.grey,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('YOUR TASK'),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      const Icon(Icons.shopping_basket_outlined,
                                          size: 25),
                                      const SizedBox(width: 10),
                                      Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: cardData[id].tasks,
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const TextSpan(
                                              text: ' Tasks',
                                              style: TextStyle(fontSize: 18),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 36),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, right: 16, bottom: 16),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.yellowAccent,
                                  ),
                                  height: double.maxFinite,
                                  width: MediaQuery.of(context).size.width / 2,
                                ),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 5),
                                const Text('EST. DATE'),
                                const SizedBox(height: 15),
                                Row(
                                  children: [
                                    const Icon(Icons.calendar_month_sharp),
                                    const SizedBox(width: 10),
                                    Text(
                                      DateFormat('yMMMd')
                                          .format(DateTime.now()),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
