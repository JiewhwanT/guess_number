import 'dart:math';
class Game {
  int answer = 0; //instant variable
  Game(){
    var r = Random();
    answer = r.nextInt(100) + 1 ;
  }
  int doGuess(int num){
    if(num > answer){
      print("$num is Too Hight");
      return 0;
    }else if (num < answer){
      print("$num is Too Low");
      return 0;
    }else{
      print("$num is Too Correct");
      return 1;
    }
  }
}