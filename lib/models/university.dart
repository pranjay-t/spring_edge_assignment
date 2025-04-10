class University {
  final String name;

  University({required this.name});

  factory University.fromJson(Map<String, dynamic> json) {
    return University(name: json['name']);
  }
}