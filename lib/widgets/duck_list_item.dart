import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

import '../models/duck.dart';

class DuckListItem extends StatelessWidget {
  final Duck duck;

  const DuckListItem({required this.duck});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          context.push("/details", extra: duck);
        },
        child: Card(
          child: Container(
            padding: EdgeInsets.all(8),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                width: 110,
                height: 90,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(duck.image))),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          duck.name,
                          style: TextStyle(
                            fontSize: 16.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        duck.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 13.5),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
