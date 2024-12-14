class ServiceItem {
  final String id;
  final String name;
  final int price;
  bool isSelected;

  ServiceItem({
    required this.id,
    required this.name,
    required this.price,
    this.isSelected = false,
  });
}
