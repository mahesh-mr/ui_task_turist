import 'package:flutter/material.dart';
import 'package:ui_task_travel/controller/category_controller.dart';
import 'package:ui_task_travel/view/style/style.dart';
import 'package:ui_task_travel/view/widgets/category.dart';
import 'package:ui_task_travel/view/widgets/details_image.dart';
import 'package:ui_task_travel/view/widgets/popular.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    final height10 = SizedBox(height: height * .02);

    return Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: white,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .03),
          child: ListView(
            shrinkWrap: true,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: width * .03,
                    backgroundImage: const AssetImage("assets/femail_avathar.png"),
                  ),
                  SizedBox(
                    width: width * .03,
                  ),
                  Text(
                    "Hello Vineetha",
                    style: subline,
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.notifications,
                    color: grey,
                  )
                ],
              ),
             height10,
              Text(
                "Where do you\nwant to explore today?",
                style: headline,
              ),
              height10,
              search_feild(height),
              height10,
              Row(
                children: [
                  Text(
                    "Chose Category",
                    style: subline,
                  ),
                  const Spacer(),
                  Text(
                    "See all",
                    style: baseLine,
                  ),
                ],
              ),
              height10,
              CategoryList(width: width),
              ImageList(height: height, width: width),
             height10,
              Text(
                "Popular Package",
                style: subline,
              ),
              height10,
             
              PopularPackage(width: width, height: height)

              //  Poppular()
            ],
          ),
        ));
  }
//==============================================================
//SEARCH========================================================
  TextField search_feild(double height) {
    return TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                hintText: "Search...",
                hintStyle: const TextStyle(color: grey),
                filled: true,
                fillColor: greyLight,
                contentPadding: const EdgeInsets.all(10),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      height * .01,
                    ),
                    borderSide: BorderSide(color: Colors.grey.shade100)),
              ),
            );
  }
}

 