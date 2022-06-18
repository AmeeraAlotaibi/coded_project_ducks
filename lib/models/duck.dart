import 'package:ducks/data/ducks_description.dart';

class Duck {
  final String name;
  final String image;
  final String description;

  const Duck(
      {required this.name, required this.description, required this.image});
}

List<Duck> ducks = [
  Duck(
      name: "Bufflehead",
      description: DuckDescriptions.bufflehead,
      image: "assets/images/bufflehead.jpeg"),
  Duck(
      name: "Common Golden Eye",
      description: DuckDescriptions.commonGoldeneye,
      image: "assets/images/common_goldeneye.jpeg"),
  Duck(
      name: "Gadwall",
      description: DuckDescriptions.gadwall,
      image: "assets/images/gadwall.jpeg"),
  Duck(
      name: "King Eider",
      description: DuckDescriptions.kingEider,
      image: "assets/images/king_eider.jpeg"),
  Duck(
      name: "Mallard",
      description: DuckDescriptions.mallard,
      image: "assets/images/mallard.jpeg"),
  Duck(
      name: "Wood",
      description: DuckDescriptions.wood,
      image: "assets/images/wood.jpeg"),
];
