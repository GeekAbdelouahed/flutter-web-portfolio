class Domain {
  Domain({
    required this.icon,
    required this.name,
    required this.color,
  });

  final String icon;
  final String name;
  final int color;

  factory Domain.fromJson(Map<String, dynamic> data) {
    return Domain(
      icon: data['icon'],
      name: data['name'],
      color: data['color'],
    );
  }
}
