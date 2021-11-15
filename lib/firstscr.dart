import 'package:flutter/material.dart';
import 'package:flutter_application_1/categorydata.dart';
import 'package:flutter_application_1/detailcategor.dart';

class FirstScree extends StatelessWidget {
  const FirstScree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food App"),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: 2,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: categry[index].color,
                ),
              ]),
              child: InkWell(
                onTap: () {
                  print(categry[index].id);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Detail(
                        id: categry[index].id,
                      ),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100)),
                        child: Image.network(categry[index].imgurl),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("data"),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
