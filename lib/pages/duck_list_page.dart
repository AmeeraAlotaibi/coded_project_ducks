import 'package:ducks/widgets/duck_list_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../models/duck_model.dart';

class DuckListPage extends StatelessWidget {
  const DuckListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ducks"),
      ),
      body: ListView.builder(
        itemCount: DuckModel.ducks.length,
        itemBuilder: (context, index) => DuckListItem(
          DuckModel.ducks[index],
          // onTap: () => context.push("/details", extra: index),
        ),
      ),
    );
  }
}
