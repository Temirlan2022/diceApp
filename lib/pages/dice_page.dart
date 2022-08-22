import 'package:flutter/material.dart';
import 'package:tapshyrma_05/app_constants/app_colors.dart';
import 'package:tapshyrma_05/data/repositories/math_repositories.dart';
import 'package:tapshyrma_05/widgets/dice_widget.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  State<DicePage> createState() => _DiceState();
}

class _DiceState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Тапшырма 05'),
          centerTitle: true,
          backgroundColor: AppColors.backgroundColor),
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Row(children: [
          const SizedBox(
            width: 20.0,
          ),
          DiceWidget(
            img: leftDice,
            onTap: () {
              changeRandomNumber();
            },
          ),
          const SizedBox(
            width: 20.0,
          ),
          DiceWidget(
            img: rightDice,
            onTap: () {
              changeRandomNumber();
            },
          ),
          const SizedBox(width: 20.0),
        ]),
      ),
    );
  }

  void changeRandomNumber() {
    setState(() {});
    leftDice = MathRepos.getRandomNumber();
    rightDice = MathRepos.getRandomNumber();
  }
}
