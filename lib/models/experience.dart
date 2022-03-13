class Experience {
  Experience({
    required this.name,
    required this.type,
    required this.company,
    required this.startAt,
    required this.endAt,
  });

  final String name;
  final String type;
  final String company;
  final String startAt;
  final String? endAt;

  factory Experience.fromJson(Map<String, dynamic> data) {
    return Experience(
      name: data['name'],
      type: data['type'],
      company: data['company'],
      startAt: data['start_at'],
      endAt: data['end_at'],
    );
  }
}
