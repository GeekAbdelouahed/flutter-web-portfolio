class Statistics {
  Statistics({
    required this.experience,
    required this.projects,
    required this.clients,
  });

  final int experience;
  final int projects;
  final int clients;

  factory Statistics.fromJson(Map<String, dynamic> data) {
    return Statistics(
      experience: data['experience'],
      projects: data['projects'],
      clients: data['clients'],
    );
  }
}
