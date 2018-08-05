import 'dart:io';
import 'dart:math' show Random;

dice() {
  int D1 = nextInt(5);
  int D2 = 3;
  int DS = D1 + D2;

  print("the value of the first dice is: $D1");
  print("the value of the second dice is: $D2");
  print("The sum of dice is : $DS");
}

main() {
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
  print("shall the game begin?");
  String round = stdin.readLineSync();
  String turn = "yes";

  while (round == "yes") {
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
  print("good game");
}
