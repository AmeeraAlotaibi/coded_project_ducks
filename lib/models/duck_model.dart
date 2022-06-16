import 'package:ducks/data/ducks_description.dart';

class DuckModel {
  final String name;
  final String imagePath;
  final String description;

  DuckModel({
    required this.name,
    required this.imagePath,
    required this.description,
  });

  static List<DuckModel> ducks = [
    DuckModel(
      name: "Bufflehead",
      imagePath: "assets/images/bufflehead.jpeg",
      description: DuckDescriptions.bufflehead,
    ),
    DuckModel(
      name: "Common Goldeneye",
      imagePath: "assets/images/common_goldeneye.jpeg",
      description: DuckDescriptions.commonGoldeneye,
    ),
    DuckModel(
      name: "Gadwall",
      imagePath: "assets/images/gadwall.jpeg",
      description: DuckDescriptions.gadwall,
    ),
    DuckModel(
      name: "King eider",
      imagePath: "assets/images/king_eider.jpeg",
      description: DuckDescriptions.kingEider,
    ),
    DuckModel(
      name: "Mallard",
      imagePath: "assets/images/mallard.jpeg",
      description: DuckDescriptions.mallard,
    ),
    DuckModel(
      name: "Wood Duck",
      imagePath: "assets/images/wood.jpeg",
      description: DuckDescriptions.wood,
    ),
  ];
}
