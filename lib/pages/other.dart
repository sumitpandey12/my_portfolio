import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controller/counterController.dart';
import 'package:velocity_x/velocity_x.dart';

class OtherScreen extends StatelessWidget {
  OtherScreen({Key? key}) : super(key: key);

  final CounterContoller _counterContoller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "Click: ${_counterContoller.counter.value} times".text.xl4.make(),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: "Main Screen".text.make())
          ],
        ),
      ),
    );
  }
}
