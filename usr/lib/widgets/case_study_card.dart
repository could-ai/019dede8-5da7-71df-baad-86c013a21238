import 'package:flutter/material.dart';
import '../models/case_study.dart';
import '../screens/case_study_detail_screen.dart';
import 'tag_chip.dart';

class CaseStudyCard extends StatelessWidget {
  final CaseStudy caseStudy;

  const CaseStudyCard({super.key, required this.caseStudy});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 24),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CaseStudyDetailScreen(caseStudy: caseStudy),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: 'image-${caseStudy.id}',
              child: Image.network(
                caseStudy.imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 200,
                  color: Colors.grey[300],
                  child: const Icon(Icons.image_not_supported, size: 50),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    caseStudy.company.toUpperCase(),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    caseStudy.title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    caseStudy.summary,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).textTheme.bodySmall?.color,
                          height: 1.5,
                        ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: caseStudy.techStack
                        .take(3)
                        .map((tech) => TagChip(label: tech))
                        .toList()..add(
                          if (caseStudy.techStack.length > 3)
                            TagChip(label: '+${caseStudy.techStack.length - 3}'),
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
