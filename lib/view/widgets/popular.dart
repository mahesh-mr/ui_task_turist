// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_task_travel/controller/category_controller.dart';
import 'package:ui_task_travel/view/style/style.dart';

class PopularPackage extends StatelessWidget {
  const PopularPackage({
    Key? key,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: width * .05),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage("assets/goa.jpg"),
                          fit: BoxFit.cover),
                    ),
                    height: 130,
                    width: 100,
                  ),
                  SizedBox(
                    width: width * .01,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: height * .02),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              beach,
                              style: subline,
                            ),
                            SizedBox(
                              width: width * .23,
                            ),
                            Icon(
                              Icons.favorite_outline,
                              color: grey,
                            ),
                          ],
                        ),
                        Text(
                          "₹ 20.00",
                          style: price,
                        ),
                        Wrap(
                          children: [
                           rateing,
                            Text(
                              point,
                              style: subline,
                            )
                          ],
                        ),
                        SizedBox(
                            height: 40,
                            width: 190,
                            child: Text(
                              subtitle,
                              style: baseLine,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
