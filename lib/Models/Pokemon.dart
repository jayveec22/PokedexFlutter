class Pokemon {
  final String id;
  final String name;
  final String height;
  final String weight;

  Pokemon(this.id, this.name, this.height, this.weight);

  Pokemon.fromCSV(List<String> items)
      : this(items[0], items[1], items[3], items[4]);
}
