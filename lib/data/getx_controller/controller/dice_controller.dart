import 'package:get/get.dart';
import 'package:tapshyrma_05/data/repositories/math_repositories.dart';

class DiceController extends GetxController {
  RxInt leftDice = 1.obs;
  RxInt rightDice = 1.obs;

  void getRundomDice() {
    leftDice.value = MathRepos.getRandomNumber();
    rightDice.value = MathRepos.getRandomNumber();
  }
}
