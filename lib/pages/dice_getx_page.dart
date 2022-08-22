import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tapshyrma_05/app_constants/app_colors.dart';
import 'package:tapshyrma_05/data/getx_controller/controller/dice_controller.dart';
import '../widgets/dice_widget.dart';

class diceGetXPage extends StatelessWidget {
  diceGetXPage({Key key}) : super(key: key);

  DiceController diceController = Get.put(DiceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Тапшырма 05'),
          centerTitle: true,
          backgroundColor: AppColors.backgroundColor,
        ),
        backgroundColor: AppColors.backgroundColor,
        body: Center(
          child: Row(children: [
            const SizedBox(
              width: 20.0,
            ),
            Obx(() {
              return DiceWidget(
                img: diceController.leftDice.value,
                onTap: () {
                  diceController.getRundomDice();
                },
              );
            }),
            const SizedBox(
              width: 20.0,
            ),
            Obx(() {
              return DiceWidget(
                img: diceController.rightDice.value,
                onTap: () {
                  diceController.getRundomDice();
                },
              );
            }),
            const SizedBox(width: 20.0),
          ]),
        ));
  }
}
