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
    title: 'Welcome to\n CropDoc',
    image: 'assets/images/welcome.gif',
    description: 'welcome',
  ),
  OnBoarding(
    title: 'Identify the pathologies',   //pathology identification
    image: 'assets/images/pathology.gif',
    description: 'Input image and we will identify the pathology',
  ),
  OnBoarding(
    title: 'Apply suggested treatment',   //treatment
    image: 'assets/images/treatment.gif',
    description: 'Organic or Chemical control, We',
  ),
  OnBoarding(
    title: 'Community Support',   //community
    image: 'assets/images/forum.gif',
    description: 'Receive expert opinion, advice to all your agricultural problems',
  ),
];
