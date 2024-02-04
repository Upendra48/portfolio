class ProjectUtils {
  final String title;
  final String description;
  final String image;
  final String url;

  const ProjectUtils({
    required this.image,
    required this.title,
    required this.description,
    required this.url,
  });
}

//? Hobby Projects
List<ProjectUtils> hobbyProjectUtils = [
  const ProjectUtils(
      image: 'assets/projects/to_do_app.png',
      title: 'To Do App',
      description: 'A simple To Do App made using Flutter and Hive',
      url: 'https://github.com/Upendra48/To_do_app'),
  const ProjectUtils(
      image: 'assets/projects/calculator_app.png',
      title: 'Calculator App',
      description: ' A simple Calculator App made using Flutter',
      url: 'https://github.com/Upendra48/Calculator'),
  const ProjectUtils(
      image: 'assets/projects/weather_app.png',
      title: 'Weather App',
      description:
          'A simple Weather App made using Flutter and OpenWeatherMap API',
      url: 'https://github.com/Upendra48/Weather_app'),
  const ProjectUtils(
      image: 'assets/projects/sneaker_shop.png',
      title: 'Sneaker Shop App UI',
      description: 'A Sneaker Shop App basic UI made using Flutter ',
      url: 'https://github.com/Upendra48/Sneaker_shop_app'),
];

//? Professional Projects
List<ProjectUtils> professionalProjectUtils = [
  const ProjectUtils(
      image: 'assets/projects/Portfolio.png',
      title: 'Portfolio Website',
      description: 'A Portfolio Website made using Flutter Web and Firebase',
      url: 'https://github.com/Upendra48/my_portfolio'),
];
