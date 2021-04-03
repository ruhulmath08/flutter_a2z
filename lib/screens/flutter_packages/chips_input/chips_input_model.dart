class ChipsInputModel {
  final String name;
  final String email;
  final String imageUrl;

  const ChipsInputModel(this.name, this.email, this.imageUrl);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is ChipsInputModel && runtimeType == other.runtimeType && name == other.name;

  @override
  int get hashCode => name.hashCode;

  @override
  String toString() {
    return name;
  }
}
