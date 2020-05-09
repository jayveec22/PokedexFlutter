class Pokemon {
  final int id;
  final String name;
  final String height;
  final String weight;

  Pokemon(this.id, this.name, this.height, this.weight);

  Pokemon.fromCSV(List<String> items)
      : this(int.tryParse(items[0]) ?? 0, items[1], items[3], items[4]);
}
