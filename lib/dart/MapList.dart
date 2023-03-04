class Customer {
  late String _name;
  late int _age;

  Customer(this._name, this._age);

  String toString() {
    return 'Customer{_name: $_name, _age: $_age}';
  }
}

class Car {
  late String _name;
  late int _gear;

  Car(this._name, this._gear);

  String toString() {
    return 'Car{_name: $_name, _gear: $_gear}';
  }
}

class Animal {
  late String _name;
  late bool _hasHair;

  Animal(this._name, this._hasHair);

  Animal.hasHair(this._name) : _hasHair = true;

  String toString() {
    return 'Animal{_name: $_name, _hasHair: $_hasHair}';
  }
}

void main() {

  // LIST
  List<Customer> customers = [Customer('Anna', 19), Customer('Berni', 28), Customer('Fina', 50)];
  print ('$customers\n');

  // MAP
  Map<String, int> cars = {
    'Q1' : 278,
    'Q2' : 354,
    'Q3' : 420,
    'Q4' : 660,
    'Q5' : 690,
  };
  print ('$cars\n');

  // MAP > LIST
  var list = [];
  cars.forEach((key, value) => list.add(Car(key, value)));
  print ('Map to List ->\n$list');



  // *******************************************************



  // LIST > MAP
  List animals = [Animal('Anaconda', false),
    Animal('Beear', true), Animal.hasHair('Bee')];

  Map animalsMap = animals.asMap();
  print ('\nList to Map ->\n$animalsMap');

}