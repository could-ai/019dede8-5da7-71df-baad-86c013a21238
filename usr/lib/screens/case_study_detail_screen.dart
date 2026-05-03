import 'package:flutter/material.dart';
import '../models/case_study.dart';
import '../widgets/tag_chip.dart';

class CaseStudyDetailScreen extends StatelessWidget {
  final CaseStudy caseStudy;

  const CaseStudyDetailScreen({super.key, required this.caseStudy});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: 'image-${caseStudy.id}',
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      caseStudy.imageUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: Colors.grey[300],
                        child: const Icon(Icons.image_not_supported, size: 50),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.7),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    caseStudy.company.toUpperCase(),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    caseStudy.title,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 24),
                  _buildSectionTitle(context, 'Technology Stack'),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: caseStudy.techStack
                        .map((tech) => TagChip(label: tech))
                        .toList(),
                  ),
                  const SizedBox(height: 32),
                  _buildSectionTitle(context, 'The Challenge'),
                  const SizedBox(height: 12),
                  Text(
                    caseStudy.challenge,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          height: 1.6,
                        ),
                  ),
                  const SizedBox(height: 32),
                  _buildSectionTitle(context, 'The Solution'),
                  const SizedBox(height: 12),
                  Text(
                    caseStudy.solution,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          height: 1.6,
                        ),
                  ),
                  const SizedBox(height: 32),
                  _buildSectionTitle(context, 'Key Results'),
                  const SizedBox(height: 16),
                  ...caseStudy.results.map((result) => Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: Theme.of(context).colorScheme.primary,
                              size: 24,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                result,
                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      height: 1.4,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      )),
                  const SizedBox(height: 48),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }
}
