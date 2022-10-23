import 'package:flutter/material.dart';
import 'package:ui_task_travel/controller/category_controller.dart';
import 'package:ui_task_travel/view/single_view.dart';
import 'package:ui_task_travel/view/style/style.dart';

class ImageList extends StatelessWidget {
  const ImageList({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: height * .25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        // physics: const NeverScrollableScrollPhysics(),
        //  shrinkWrap: true,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap:(){Navigator.push(context,MaterialPageRoute(builder: (context) => SingleDetails(),));},
                  child: Container(
                    height: height * .25,
                    width: width * .35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: AssetImage("assets/im1.jpg"),
                            fit: BoxFit.cover)),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: width * .02, bottom: height * .01),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              beach,
                              style: imageSubline,
                            ),
                            Wrap(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: width * .05,
                                  color: white,
                                ),
                                Text(
                                  place,
                                  style: baseLine2,
                                ),
                              ],
                            ),
                            Row(
                              children: [Text(point, style: baseLine2)],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: width * .05,
                  right: width * .05,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: white,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_outline,
                          color: red,
                          size: 15,
                        )),
                  ))
            ],
          );
        },
      ),
    );
  }
}
