import 'package:ducks/models/duck_model.dart';
import 'package:flutter/material.dart';

class DuckDetailsPage extends StatelessWidget {
  final DuckModel duck;

  const DuckDetailsPage({required this.duck});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        duck.name,
      )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: duck,
            child: Image.asset(
              duck.imagePath,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Chip(
                  label: Text(
                    "Size: ${duck.size}",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
                Text("Scientific Name",
                    style: Theme.of(context).textTheme.headline6!.copyWith()),
                SizedBox(height: 8),
                Text(duck.scientificName,
                    style: Theme.of(context).textTheme.bodyMedium),
                SizedBox(height: 14),
                Text("Description",
                    style: Theme.of(context).textTheme.headline6!.copyWith()),
                SizedBox(height: 8),
                Text(duck.description,
                    style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
