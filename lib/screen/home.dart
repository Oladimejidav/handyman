import 'package:flutter/material.dart';
import 'package:services_app/UI/bottom_nav.dart';

import 'homebody.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Wrap(children: <Widget>[
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'YOU ARE IN',
                    style: TextStyle(fontSize: 12),
                  ),
                  Row(
                    children: <Widget>[
                      const Text(
                        'Sector 62, Noida',
                        style: TextStyle(fontSize: 15),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ]),
          ])),
      body: const Home(),
      bottomNavigationBar: const Bottom(),
    );
  }
}
