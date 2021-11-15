import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/categorydata.dart';

class Detail extends StatelessWidget {
  String id;
  Detail({required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(id),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int i) {
            return Container(
              child: Column(
                children: categry
                    .where((element) => element.id == id)
                    .map(
                      (e) => Text(e.title),
                    )
                    .toList(),
              ),
            );
          }),
    );
  }
}
