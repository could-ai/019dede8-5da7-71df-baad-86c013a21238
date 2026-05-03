import '../models/case_study.dart';

const dummyCaseStudies = [
  CaseStudy(
    id: '1',
    title: 'Migrating Monolith to Microservices',
    company: 'TechCorp Global',
    summary: 'How we broke down a 10-year-old monolith into scalable microservices, reducing deployment time by 80%.',
    challenge: 'TechCorp\'s legacy monolithic architecture was becoming increasingly difficult to maintain. Deployment cycles took over a week, and any single bug could bring down the entire system. The team was growing, but productivity was stalling due to code conflicts and tight coupling.',
    solution: 'We implemented a phased strangler fig pattern to gradually extract services based on business domains. Using Docker and Kubernetes, we containerized the new services and established robust CI/CD pipelines. An API Gateway was introduced to route traffic intelligently between the legacy system and the new microservices.',
    results: [
      'Reduced average deployment time from 7 days to under 2 hours',
      'Improved system uptime to 99.99%',
      'Enabled independent scaling of high-traffic services',
      'Increased developer satisfaction and onboarding speed'
    ],
    techStack: ['Go', 'Node.js', 'Kubernetes', 'Docker', 'AWS', 'PostgreSQL', 'Redis'],
    imageUrl: 'https://images.unsplash.com/photo-1451187580459-43490279c0fa?auto=format&fit=crop&q=80&w=800',
  ),
  CaseStudy(
    id: '2',
    title: 'Real-time Data Processing Pipeline',
    company: 'Stream Analytics Inc',
    summary: 'Building a high-throughput, low-latency data pipeline to process millions of events per second.',
    challenge: 'Stream Analytics needed to process user event data in real-time to provide immediate insights to their clients. Their existing batch-processing Hadoop infrastructure was introducing a 24-hour delay, which was unacceptable for time-sensitive trading algorithms.',
    solution: 'We architected a completely new streaming pipeline using Apache Kafka as the central nervous system. Apache Flink was utilized for complex event processing and stateful computations. The processed data was then sunk into a fast OLAP database (ClickHouse) for sub-second querying.',
    results: [
      'Processed over 5 million events per second at peak',
      'Reduced end-to-end latency from 24 hours to under 500 milliseconds',
      'Lowered infrastructure costs by optimizing compute resource allocation',
      'Enabled real-time alerting features for end-users'
    ],
    techStack: ['Apache Kafka', 'Apache Flink', 'Java', 'ClickHouse', 'Grafana'],
    imageUrl: 'https://images.unsplash.com/photo-1551288049-bebda4e38f71?auto=format&fit=crop&q=80&w=800',
  ),
  CaseStudy(
    id: '3',
    title: 'Mobile App Performance Optimization',
    company: 'ShopSwift',
    summary: 'Revamping an e-commerce Flutter app to achieve 60fps and reduce memory footprint.',
    challenge: 'ShopSwift\'s flagship mobile application was suffering from severe frame drops, especially on mid-range Android devices. The app was consuming excessive memory, leading to frequent OS-level kills. The complex UI with infinite scrolling product lists was the primary culprit.',
    solution: 'Conducted comprehensive profiling using Flutter DevTools. We implemented custom caching strategies for high-resolution images, heavily optimized the list rendering using ListView.builder, and minimized widget rebuilds by carefully managing state with Riverpod. Heavy computations were offloaded to background isolates.',
    results: [
      'Achieved consistent 60fps scrolling performance on lower-tier devices',
      'Reduced overall memory consumption by 45%',
      'Decreased app launch time by 2.5 seconds',
      'Increased user retention rate by 15% due to improved UX'
    ],
    techStack: ['Flutter', 'Dart', 'Riverpod', 'Firebase', 'SQLite'],
    imageUrl: 'https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c?auto=format&fit=crop&q=80&w=800',
  ),
];
