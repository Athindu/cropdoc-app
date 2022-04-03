class OnBoarding {
  final String title;
  final String image;
  final String description;

  OnBoarding({
    required this.title,
    required this.image,
    required this.description,
  });
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
    title: 'Welcome to CropDoc',
    image: 'assets/images/welcome.gif',
    description: 'Come hand in hand to identify problems in your cultivation by yourself',
  ),
  OnBoarding(
    title: 'Identify the pathologies',   //pathology identification
    image: 'assets/images/pathology.gif',
    description: 'Let us have a look and help you to identify the pathology',
  ),
  OnBoarding(
    title: 'Apply suggested treatment',   //treatment
    image: 'assets/images/treatment.gif',
    description: 'Get the latest treatment modalities that suits your problem',
  ),
  OnBoarding(
    title: 'Community Support',   //community
    image: 'assets/images/forum.gif',
    description: 'Share your thoughts and problems with the experts in the field',
  ),
];
