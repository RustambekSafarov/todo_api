class Todo {
  final String title;
  final String description;
  final bool completed;
  int? id;

  Todo({
    required this.title,
    required this.description,
    required this.completed,
    this.id,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      title: json['title'],
      description: json['description'],
      completed: json['completed'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'completed': completed,
      'id': id,
    };
  }
}
