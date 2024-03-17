import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toku_learning_language_app/Component/data_show_play.dart';
import 'package:toku_learning_language_app/model/toku_app_model.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.item, required this.itemColor});

  final TokuModel item;
  final Color itemColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: itemColor,
        ),
        height: 100,
        child: Row(
          children: [
            item.image == null
                ? Container()
                : Container(
                    decoration: BoxDecoration(
                      color: const Color(0xfffff6dc),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(item.image!),
                  ),
            Expanded(
              child: DataShow(
                item: item,
                itemColor: itemColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
