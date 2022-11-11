class Todo {
  String? id;
  String? todone;
  bool done;

  Todo({
    required this.id,
    required this.todone,
    this.done = false,
  });

  static List<Todo> todoList() {
    return [
      Todo(id: '01', todone: 'Wake UP', done: true),
      Todo(id: '02', todone: 'Brush', done: true),
      Todo(id: '03', todone: 'Bath'),
      Todo(id: '04', todone: 'Get Ready'),
      Todo(id: '05', todone: 'College Time'),
    ];
  }
}
