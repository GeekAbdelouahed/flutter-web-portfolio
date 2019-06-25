final List<Project> projects = [
  Project(
      title: 'Toptaxi',
      description:
          'Toptaxi is a third party transportation service, which is intended to provide cars to its customers through a smart application whenever they request. The use of this application is free',
      tags: [
        'Java',
        'Php',
        'Html',
        'JavaScript',
        'Laravel',
        'Firebase',
        'One Signal',
      ],
      images: [
        'images/toptaxi/img1.png',
        'images/toptaxi/img2.png',
        'images/toptaxi/img3.png',
        'images/toptaxi/img4.png',
        'images/toptaxi/img5.png',
      ]),
  Project(
      title: 'Omran',
      description:
          'Developing a strategic plan that can lead the Muslim Ummah towards global competitiveness and can direct the efforts of qualified and skilled youth towards optimal utilization of planning and institutional tools to contribute to the renaissance of their communities and homeland countries.',
      tags: [
        'Dart',
        'Php',
        'Flutter',
        'Laravel',
        'One Signal',
      ],
      images: [
        'images/omran/img1.png',
        'images/omran/img2.png',
        'images/omran/img3.png',
        'images/omran/img4.png',
      ]),
];

class Project {
  final String title;
  final String description;
  final List<String> tags;
  final List<String> images;

  Project({this.title, this.description, this.tags, this.images});
}
