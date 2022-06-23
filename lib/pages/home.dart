import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/other.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

import '../controller/counterController.dart';

class MyHome extends StatelessWidget {
  MyHome({Key? key}) : super(key: key);

  final CounterContoller counterContoller = Get.put(CounterContoller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(
          (() => Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                "Clicks: ${counterContoller.counter.value}".text.xl4.make(),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      Get.to(OtherScreen());
                    },
                    child: "Open Other Screen".text.make())
              ])),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterContoller.increament();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
