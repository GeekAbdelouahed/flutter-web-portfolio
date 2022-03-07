class Skill {
  Skill({
    required this.name,
    required this.percentage,
    required this.color,
  });

  final String name;
  final int percentage;
  final String color;

  factory Skill.fromJson(Map<String, dynamic> data) {
    return Skill(
      name: data['name'],
      percentage: data['percentage'],
      color: data['color'],
    );
  }
}
