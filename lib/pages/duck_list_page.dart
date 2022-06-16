import 'package:ducks/widgets/duck_list_item.dart';
import 'package:flutter/material.dart';

import '../models/duck_model.dart';

class DuckListPage extends StatefulWidget {
  const DuckListPage({Key? key}) : super(key: key);

  @override
  State<DuckListPage> createState() => _DuckListPageState();
}

class _DuckListPageState extends State<DuckListPage>
    with TickerProviderStateMixin {
  String show = "all";

  List<String> filterOptions = ["All", "Small", "Medium", "Large"];

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var ducks = DuckModel.ducks;

    if (show != "all") {
      ducks = ducks.where((d) => d.size == show).toList();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Ducks"),
        bottom: TabBar(
            controller: tabController,
            onTap: (i) {
              setState(() {
                show = filterOptions[i].toLowerCase();
              });
            },
            tabs: filterOptions
                .map(
                  (e) => Tab(text: e),
                )
                .toList()),
      ),
      body: ListView.builder(
        itemCount: ducks.length,
        itemBuilder: (context, index) => DuckListItem(
          ducks[index],
        ),
      ),
    );
  }
}
