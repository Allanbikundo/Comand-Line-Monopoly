import 'dart:io';
import 'dart:math' show Random;

dice() {
  var D1 = new Random();
  int dice1 = D1.nextInt(6);
  int dice2 = D1.nextInt(6);
  int sumOfDice = dice1 + dice2;

  print("the value of the first dice is: $dice1");
  print("the value of the second dice is: $dice2");
  print("The sum of dice is : $sumOfDice");
}

main() {
  Stopwatch stopwatch = new Stopwatch()..start();
  int noOfPlayers;
  print("Enter Number Of players");
  noOfPlayers = 2;
//  noOfPlayers = stdin.readByteSync();
  print(noOfPlayers);

  List<String> name = new List<String>();
  for (int i = 0; i < noOfPlayers; i++) {
    print("Enter your name player $i");
    String jina;
    jina = stdin.readLineSync();
    name.add(jina);
  }
  print("shall the game begin?[yes/no]");
  String round = stdin.readLineSync();
  String turn = "yes";

  while (round.toLowerCase() == "yes") {
    print("tuko while");
    if (turn != null) {
      for (int i = 0; i < noOfPlayers; i++) {
        print("tuko for loop");
        print("hey its your turn" + name[i]);
        dice();
        print("press any key when ready");
        turn = stdin.readLineSync();
        if (i == (noOfPlayers - 1)) {
          print("Another Round?   [yes/no]");
          round = stdin.readLineSync();
        }
      }
    }
  }
  stopwatch.stop();
  print("good game");
  print("Finshed in ${stopwatch.elapsedMicroseconds/6e+7} Minutes");
}
