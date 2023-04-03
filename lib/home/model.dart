class HorizontalItems {
  final String image;
  final String title;
  final String recipes;

  const HorizontalItems({
    required this.image,
    required this.title,
    required this.recipes,
  });
}

class VerticalItems {
  final bool mark;
  final String image;
  final String title;
  final String avatar;
  final String name;

  const VerticalItems({
    required this.mark,
    required this.image,
    required this.title,
    required this.avatar,
    required this.name,
  });
}
