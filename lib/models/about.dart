import 'domain.dart';

class About {
  About({
    required this.firstName,
    required this.lastName,
    required this.nickName,
    required this.email,
    required this.address,
    required this.phone,
    required this.description,
    required this.domains,
  });

  final String firstName;
  final String lastName;
  final String nickName;
  final String email;
  final String address;
  final String phone;
  final String description;
  final List<Domain> domains;

  factory About.fromJson(Map<String, dynamic> data) {
    return About(
      firstName: data['first_name'],
      lastName: data['last_name'],
      nickName: data['nick_name'],
      email: data['email'],
      address: data['address'],
      phone: data['phone'],
      description: data['description'],
      domains:
          (data['domains'] as List).map((d) => Domain.fromJson(d)).toList(),
    );
  }
}
