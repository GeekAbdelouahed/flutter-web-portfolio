import 'package:flutter_web_portfolio/models/user.dart';

class DataService {
  static User getData() {
    return User.fromJson(data);
  }
}

final int _yearsOfExperience = DateTime.now().year - 2016;

final Map<String, dynamic> data = {
  "about": {
    "first_name": "Abdelouahed",
    "last_name": "Medjoudja",
    "nick_name": "Wahid",
    "email": "abdeluached@gmail.com",
    "address": "end_atuggourt, Ouargla, Algeria",
    "phone": "+213 xx xx xx xx xx",
    "description":
        "I have been in the sector of Mobile Development for like $_yearsOfExperience years now and am pretty experienced in creating apps using the best languages. I am highly proficient in coding and programming as I have a Master's degree in Computer science. Also, I am highly skilled with Flutter framework as I have handsome experience over it by building many projects. Still, I am always eager end_at learn and make my skill sharper whenever I get any chance. Above and beyond, I have a great passion for mobile and software technology as well. Worked with many companies and individuals and enjoyed the work a lot. My recruiters are always delighted with my creativity, hard-working and stamina.",
    "domains": [
      {
        "icon": "mobile-application.png",
        "name": "Application",
        "color": 0xff2c98f0
      },
      {
        "icon": "feature.png",
        "name": "Backend",
        "color": 0xffec5453,
      },
      {
        "icon": "software-development.png",
        "name": "Software",
        "color": 0xfff9bf3f,
      },
      {
        "icon": "global-network.png",
        "name": "Networking",
        "color": 0xff4054b2,
      },
    ],
  },
  "statistics": {
    "experience": 5,
    "projects": 20,
    "clients": 15,
  },
  "skills": [
    {
      "name": "Mobile Applications",
      "percentage": 99,
      "color": 0xff2c98f0,
    },
    {
      "name": "Flutter",
      "percentage": 98,
      "color": 0xfff9bf3f,
    },
    {
      "name": "Git",
      "percentage": 99,
      "color": 0xffec5453,
    },
    {
      "name": "Problem Solving",
      "percentage": 99,
      "color": 0xffa84cb8,
    },
    {
      "name": "Clean code",
      "percentage": 80,
      "color": 0xff4054b2,
    },
    {
      "name": "Testing",
      "percentage": 90,
      "color": 0xff2fa499,
    },
  ],
  "education": [
    {
      "institute": "Kasdi Merbah University - Ouargla",
      "degree": "Master's degree, Network Administration and Security",
      "start_at": "2016/09",
      "end_at": "2018/06",
    },
    {
      "institute": "Kasdi Merbah University - Ouargla",
      "degree": "Bachelor's degree, Mathematics and Computer Science",
      "start_at": "2013/09",
      "end_at": "2016/06",
    },
  ],
  "experience": [
    {
      "name": "Senior Mobile Developer",
      "type": "Full-time",
      "company": "Branbassador",
      "location": "London, England, United Kingdom",
      "start_at": "2022/01",
    },
    {
      "name": "Senior Mobile Developer",
      "type": "Contract",
      "company": "International end_atp Services",
      "location": "Algeria",
      "start_at": "2021/04",
    },
    {
      "name": "Mobile Developer",
      "type": "Full-time",
      "company": "Sindibad International",
      "location": "Algeria",
      "start_at": "2019/02",
      "end_at": "2022/01",
    },
    {
      "name": "Mobile Developer",
      "type": "Freelance",
      "company": "Fennec Technology",
      "location": "Algeria",
      "start_at": "2019/01",
      "end_at": "2021/06",
    },
    {
      "name": "Android Developer",
      "type": "Part-time",
      "company": "Optim IT",
      "location": "Algeria",
      "start_at": "2017/01",
      "end_at": "2018/05",
    },
    {
      "name": "Mobile Developer",
      "type": "Freelance",
      "company": "International end_atp Services",
      "location": "Algeria",
      "start_at": "2012/04",
    },
  ],
};
