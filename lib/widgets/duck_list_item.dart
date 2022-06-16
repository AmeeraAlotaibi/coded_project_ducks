import 'package:ducks/models/duck_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DuckListItem extends StatelessWidget {
  final DuckModel duck;

  DuckListItem(this.duck);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        duck.name,
        style: Theme.of(context).textTheme.headline6,
      ),
      subtitle: Text(
        duck.description,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: Theme.of(context).textTheme.subtitle2,
      ),
      isThreeLine: true,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          duck.imagePath,
          height: 80,
          width: 80,
          fit: BoxFit.cover,
        ),
      ),
      onTap: () => context.push("/details", extra: duck),
    );
  }
}
