import 'dart:ui';

class Category {
  const Category({
    required this.id,
    required this.title,
    this.color = const Color(0xFFFFA500), // Orange color
  });

  final String id;
  final String title;
  final Color color;
}
