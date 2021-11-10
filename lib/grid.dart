import 'package:first/passdata.dart';
import 'package:flutter/material.dart';

import 'data2.dart';

class Great extends StatelessWidget {
  const Great({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var i = iten;
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: i.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  blurRadius: 2.0,
                  spreadRadius: 0,
                ),
              ]),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: i[index].color,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
