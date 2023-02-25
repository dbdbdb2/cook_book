
import 'dart:io';

void main() {

  stdout.write('\nCurrent velocity: ');
  int velocity = int.parse(stdin.readLineSync()!);

  print ('\nCurrent velocity: $velocity');

  stdout.write('\nSpeed up to: ');
  int afterSpeed = velocity + int.parse(stdin.readLineSync()!);

  print ('\nCurrent velocity: $afterSpeed');

  int currentSpeed(int speed) => speed;
  // int speedUp() => currentSpeed(speed) 130;
  int brake() => 100;

}