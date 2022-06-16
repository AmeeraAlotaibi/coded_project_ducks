import 'package:ducks/data/ducks_description.dart';

class DuckModel {
  final String name;
  final String imagePath;
  final String description;
  final String size;

  final String genus;
  final String species;

  String get scientificName {
    return genus[0].toUpperCase() +
        genus.substring(1).toLowerCase() +
        " " +
        species.toLowerCase();
  }

  DuckModel({
    required this.name,
    required this.imagePath,
    required this.description,
    required this.size,
    required this.genus,
    required this.species,
  });

  static List<DuckModel> ducks = [
    DuckModel(
        name: "Bufflehead",
        imagePath: "assets/images/bufflehead.jpeg",
        description: DuckDescriptions.bufflehead,
        size: "small",
        genus: "Bucephala",
        species: "Clangula"),
    DuckModel(
        name: "Common Goldeneye",
        imagePath: "assets/images/common_goldeneye.jpeg",
        description: DuckDescriptions.goldeneye,
        size: "medium",
        genus: "Bucephala",
        species: "Clangula"),
    DuckModel(
        name: "Gadwall",
        imagePath: "assets/images/gadwall.jpeg",
        description: DuckDescriptions.gadwall,
        size: "medium",
        genus: "Anatidae",
        species: "Strepera"),
    DuckModel(
        name: "King eider",
        imagePath: "assets/images/king_eider.jpeg",
        description: DuckDescriptions.kingEider,
        size: "large",
        genus: "Somateria",
        species: "Spectabilis"),
    DuckModel(
        name: "Mallard",
        imagePath: "assets/images/mallard.jpeg",
        description: DuckDescriptions.mallard,
        size: "medium",
        genus: "Anas",
        species: "Gryllei"),
    DuckModel(
        name: "Wood Duck",
        imagePath: "assets/images/wood.jpeg",
        description: DuckDescriptions.wood,
        size: "medium",
        genus: "Anas",
        species: "Gryllei"),
  ];
}
