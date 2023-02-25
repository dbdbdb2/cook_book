
import 'dart:io';

void main() {

  stdout.write('Car`s name: ');
  print ('Car name: ${stdin.readLineSync()}\n');

  stdout.write('\nCurrent velocity: ');
  int velocity = int.parse(stdin.readLineSync()!);

  stdout.write('\nSpeed up to: ');
  int afterSpeed = velocity + int.parse(stdin.readLineSync()!);

  print ('\nCurrent velocity: $afterSpeed');

}