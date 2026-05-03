import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/case_study_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Engineering Case Studies',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: dummyCaseStudies.length,
        itemBuilder: (context, index) {
          return CaseStudyCard(caseStudy: dummyCaseStudies[index]);
        },
      ),
    );
  }
}
