class Project {
  final String name;
  final String description;
  final String image;
  final String url;
  final List<String> skills;

  Project({this.name, this.description, this.image, this.url, this.skills});
}

// ignore: non_constant_identifier_names
List<Project> PROJECTS = [
  Project(
    name: 'Omran',
    description:
        'Developing a strategic plan that can lead the Muslim Ummah towards global competitiveness and can direct the efforts of qualified and skilled youth towards optimal utilization of planning and institutional tools to contribute to the renaissance of their communities and homeland countries.',
    image: 'images/projects/omran.png',
    url: 'https://play.google.com/store/apps/details?id=org.omran.android',
    skills: [
      'Dart',
      'Java',
      'Php',
      'Sql',
      'Flutter',
      'OneSignal',
      'Git',
    ],
  ),
  Project(
    name: 'Topfood',
    description: 'Food delivery app',
    image: 'images/projects/topfood.png',
    url:
        'https://play.google.com/store/apps/details?id=dz.topfood.top_food_client',
    skills: [
      'Dart',
      'Flutter',
      'Git',
    ],
  ),
  Project(
    name: 'Toptaxi',
    description:
        'Toptaxi is a third party transportation service, which is intended to provide cars to its customers through a smart application whenever they request. The use of this application is free',
    image: 'images/projects/toptaxi.png',
    url: 'https://play.google.com/store/apps/details?id=toptaxi.dz',
    skills: [
      'Java',
      'Php',
      'JavaScript',
      'Html',
      'Css',
      'Sql',
      'Firebase',
      'Laravel',
      'OneSignal',
      'Git',
    ],
  ),
  Project(
    name: 'Nataloe',
    description:
        'nataloe شركة جزائرية - إسبانية متخصصة بانتاج مستحضرات شبه صيدلانية للعناية اليومية بالبشرة اعتمادا على خلاصتي الألوفيرا والحلزون والزيوت الأساسية',
    image: 'images/projects/nataloe.png',
    url: 'https://play.google.com/store/apps/details?id=com.nataloe',
    skills: [
      'Kotlin',
      'Php',
      'JavaScript',
      'Html',
      'Css',
      'Sql',
      'Firebase',
      'Laravel',
      'Git',
    ],
  ),
  Project(
    name: 'جداء',
    description:
        'يعتبر تعليم الطفل جدول الضرب من أصعب الأمور بالنسبة للأولياء وممل بالنسبة لطفل، لكن مع التطور التكنولوجي وحب الاطفال للتكنولوجيا أصبح ذلك من أيسر المهام على الأولياء والطفل على حد سواء ؛ تطبيق جداء يعتبر الحل الامثل لتعلم جدول الضرب خطوة بخطوة بطريقة سهلة وممتعة مع أصوات خاصة بالإجابة الصحيحة أوالخاطئة، أيضا التطبيق يعطيك تقييما لمستواك خلال التعلم تقييم لكل الجداول معا وتقييم خاص لكل جدول كما يمكنك التطبيق من إجراء إمتحان مباشر لتحديد المستوى ويقوم بحفظ كل نتائجك مع التقييم والتاريخ وبالتالي يمكنك الرجوع لها في أي وقت للإطلاع عليها وملاحظة مراحل تطورك مع الوقت.',
    image: 'images/projects/juda.png',
    url: 'https://play.google.com/store/apps/details?id=com.ouahiddev.juda',
    skills: [
      'Java',
      'Sql',
      'Git',
    ],
  ),
];
