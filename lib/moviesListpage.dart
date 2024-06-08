import 'package:flutter/material.dart';
import 'package:logistifie/completewidget.dart';
import 'package:logistifie/singlewidget.dart';

class MovieListPage extends StatelessWidget {
  const MovieListPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.black,
      child: SafeArea(
        minimum: const EdgeInsets.only(top: 30),
        child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    Spacer(),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Movie list",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CompleteWidget()));
                          },
                          child: const SingleWidget()),
                      const SingleWidget(),
                      const SingleWidget(),
                      const SingleWidget(),
                      const SingleWidget(),
                      const SingleWidget(),
                      const SingleWidget(),
                      const SingleWidget(),
                    ],
                  ),
                ),
              ],
            )),
      ),
    ));
  }
}
