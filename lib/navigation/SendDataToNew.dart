import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String description;
  const Todo(this.title, this.description);
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,

      home: TodosScreen(
        todos: List.generate(
          20,
          (i) => Todo(
            'Todo $i',
            'A description for Todo $i',
          ),
        ),
      ),
    ),
  );
}

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key, required this.todos});

  final List<Todo> todos;

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Todos', style: TextStyle(fontSize: 35)),
      ),

      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {

          return ListTile(

            title: Text(todos[index].title),
            // When a user taps the ListTile, navigate to the DetailScreen.
            // Notice that you're not only creating a DetailScreen, you're
            // also passing the current todo through to it.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {

  // In the constructor, require a Todo.
  const DetailScreen({super.key, required this.todo});

  // Declare a field that holds the Todo.
  final Todo todo;

  @override
  Widget build(BuildContext context) {

    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(todo.title, style: TextStyle(fontSize: 35)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}