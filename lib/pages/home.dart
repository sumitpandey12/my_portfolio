import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Portfolio".text.make(),
      ),
      body: Column(children: [
        "Sumit\nPandey".text.xl4.make(),
      ]),
      drawer: Drawer(),
    );
  }
}
