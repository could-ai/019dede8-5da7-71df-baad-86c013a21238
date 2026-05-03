class CaseStudy {
  final String id;
  final String title;
  final String company;
  final String summary;
  final String challenge;
  final String solution;
  final List<String> results;
  final List<String> techStack;
  final String imageUrl;

  const CaseStudy({
    required this.id,
    required this.title,
    required this.company,
    required this.summary,
    required this.challenge,
    required this.solution,
    required this.results,
    required this.techStack,
    required this.imageUrl,
  });
}
