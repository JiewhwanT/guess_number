import 'dart:io';
import 'game.dart';

void main(){
  var game = Game();
  int result = 0;
  do {
    stdout.write('Please guess the number between 1 and 100 : ');
    var input = stdin.readLineSync(); //รับข้อมูลที่เราพิมพ์
    var guess = int.tryParse(input!); //แปลง String ไปเป็น int

    if(guess == null){
      print("Please ennter number only");
      continue;
    }
    result = game.doGuess(guess);

  }while(result != 1);
}


