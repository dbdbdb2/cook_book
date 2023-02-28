
class Animal {

  final int _id, _age;
  final String _name;
  final bool _isMammal;

  Animal.noMammal(this._id, this._age, this._name) : _isMammal = false;
  Animal.isMammal(this._id, this._age, this._name) : _isMammal = true;

  String toString() {
    return 'Animal{_id: $_id, _age: $_age, _name: $_name, _isMammal: $_isMammal}';
  }

}

void main() {

  Animal cat = Animal.isMammal(1, 7, 'Felisin');
  Animal flappy = Animal.noMammal(2, 6, 'Flappy');

  print (cat);
  print (flappy);

}