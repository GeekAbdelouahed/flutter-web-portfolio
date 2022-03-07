import 'about.dart';
import 'education.dart';
import 'experience.dart';
import 'skill.dart';
import 'statistics.dart';

class User {
  User({
    required this.about,
    required this.statistics,
    required this.skills,
    required this.education,
    required this.experience,
  });

  final About about;
  final Statistics statistics;
  final List<Skill> skills;
  final List<Education> education;
  final List<Experience> experience;

  factory User.fromJson(Map<String, dynamic> data) {
    return User(
      about: About.fromJson(data['about']),
      statistics: Statistics.fromJson(data['statistics']),
      skills: (data['skills'] as List).map((d) => Skill.fromJson(d)).toList(),
      education: (data['education'] as List)
          .map((d) => Education.fromJson(d))
          .toList(),
      experience: (data['experience'] as List)
          .map((d) => Experience.fromJson(d))
          .toList(),
    );
  }
}
