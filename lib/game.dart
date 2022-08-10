import 'dart:io';
import 'dart:math';
class Game {
  int answer = 0; //instant variable
  int count = 0;

  Game() {
    var r = Random();
    answer = r.nextInt(100) + 1;
    //print('คำตอบคือ $answer');
  }

  int doGuess(int num) {
    if (num > answer) {
      print("➜ $num is Too Hight ▲");
      count = count+1;
      return 0;
    } else if (num < answer) {
      print("➜ $num is Too Low ▼");
      count = count+1;
      return 0;
    } else {
      count = count+1;
      print("➜ $num is Too Correct ❤, total guess is $count");
      return 1;
    }
  }
}

