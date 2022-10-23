import 'package:flutter/material.dart';
import 'package:ui_task_travel/controller/category_controller.dart';
import 'package:ui_task_travel/view/style/style.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 50,
      child: ListView.builder(
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .02),
            child: Container(
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(cataegorys[index].image),
                      ),
                    ),
                  ),
                  Text(cataegorys[index].nmae)
                ],
              ),
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: green)),
            ),
          );
        },
      ),
    );
  }
}
