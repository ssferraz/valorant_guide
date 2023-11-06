class Ability {
  final String name;
  final String description;
  final String imagePath;

  Ability({
    required this.name,
    required this.description,
    required this.imagePath,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'imagePath': imagePath,
    };
  }

  static Ability fromMap(Map<String, dynamic> map) {
    return Ability(
      name: map['name'],
      description: map['description'],
      imagePath: map['imagePath'],
    );
  }
}
