import 'package:flutter/material.dart';
import 'package:ui_task_travel/controller/category_controller.dart';
import 'package:ui_task_travel/view/style/style.dart';

class SingleDetails extends StatelessWidget {
  const SingleDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    final height10 = SizedBox(height: height * .02);
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/im1.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outline,
                color: white,
              ),
            )
          ],
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 300,
              child: Column(
                children: [
                  Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        beach,
                        style: sublinewite,
                      ),
                      const SizedBox(width: 180),
                      Icon(
                        Icons.location_on_outlined,
                        size: width * .05,
                        color: white,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        place,
                        style: baseLine2,
                      )
                    ],
                  ),
                  const SizedBox(height: 50),
                  Text(
                    subtitle,
                    style: baseLine2,
                  ),
                  const SizedBox(height: 70),
                  Wrap(
                    children: [
                      rateing,
                      Text(
                        point,
                        style: baseLine2,
                      ),
                      const SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "₹15,00/person",
                            style: baseLine2,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: yellow,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(12), // <-- Radius
                                ),
                              ),
                              onPressed: () {},
                              child: const Text("Book Now"))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
