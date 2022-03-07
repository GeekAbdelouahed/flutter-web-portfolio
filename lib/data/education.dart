class Education {
  Education({
    required this.institute,
    required this.degree,
    required this.startAt,
    required this.endAt,
  });

  final String institute;
  final String degree;
  final String startAt;
  final String endAt;

  factory Education.fromJson(Map<String, dynamic> data) {
    return Education(
      institute: data['institute'],
      degree: data['degree'],
      startAt: data['start_at'],
      endAt: data['end_at'],
    );
  }
}
