
import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() async {

  // Avoid errors caused by flutter upgrade > import 'package:flutter/widgets.dart';
  WidgetsFlutterBinding.ensureInitialized();

  // Open the database and store the reference.
  final database = openDatabase(

    // Set the path to the database
    join(await getDatabasesPath(), 'doggie_database.db'),

    // When the database is first created, create a table to store dogs
    onCreate: (db, version) {

      // Run the CREATE TABLE statement on the database.
      return db.execute(
        'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
      );
    },

    // version:x
    // This executes the onCreate function
    // Provides a path to perform database upgrades and downgrades
    version: 1,
  );

  // CRUD -> db.insert || db.query || db.update || db.delete
  Future<void> createDog(Dog dog) async {

    // Get a reference to the database.
    final db = await database;

    // Insert the Dog into the correct table.
    // You might also specify the `conflictAlgorithm` in case the same dog is inserted twice.
    await db.insert(
      'dogs',
      dog.toMap(),

      //Replace existing
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Dog>> readAllDogs() async {

    // Get a reference to the database
    final db = await database;

    // Query the table for getting data of all The Dogs
    final List<Map<String, dynamic>> map = await db.query('dogs');

    // Convert the List<Map<String, dynamic> into a List<Dog>
    return List.generate(map.length, (i) =>
      Dog(
        id: map[i]['id'],
        name: map[i]['name'],
        age: map[i]['age'],
      )
    );
  }

  Future<void> updateDog(Dog dog) async {

    // Get a reference to the database
    final db = await database;

    // Update the given Dog
    await db.update(
      'dogs',
      dog.toMap(),

      // Ensure that the Dog has a matching id
      where: 'id = ?',

      // Pass the Dog's id as a whereArg to prevent SQL injection
      whereArgs: [dog.id],

    );
  }

  Future<void> deleteDog(int id) async {

    // Get a reference to the database
    final db = await database;

    // Remove the Dog from the database
    await db.delete(
      'dogs',

      // Use a `where` clause to delete a specific dog.
      where: 'id = ?',

      // Pass the Dog's id as a whereArg to prevent SQL injection.
      whereArgs: [id],

    );

  }


  // C

  // Create a Dog and add it to the dogs table
  Dog fido = /*const*/ Dog(
    id: 0,
    name: 'Fido',
    age: 35,
  );

  await createDog(fido);



  // R

  // print all before fido's update
  print(await readAllDogs());




  // U

  // Update Fido's age and save it to the database
  fido = Dog(
    id: fido.id,
    name: fido.name,
    age: fido.age + 7,
  );

  // print dogs before fido's update
  await updateDog(fido);

  // Print the updated results
  print(await readAllDogs());



  // D

  // Delete Fido from the database.
  await deleteDog(fido.id);

  // Print the list of dogs (empty).
  print(await readAllDogs());

}

class Dog {
  final int id;
  final String name;
  final int age;

  const Dog({
    required this.id,
    required this.name,
    required this.age,
  });

  // Convert a Dog into a Map
  // The keys must correspond to the columns in the database
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
    };
  }

  // Implement toString to make it easier to see information about each dog using

  String toString() {
    return 'Dog{id: $id, name: $name, age: $age}';
  }

}