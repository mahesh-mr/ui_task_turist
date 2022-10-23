import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ui_task_travel/model/category_model.dart';
import 'package:ui_task_travel/view/style/style.dart';

List<CategoryModel> cataegorys = [
  CategoryModel(
    image: "assets/beach.png",
    nmae: "Beach",
  ),
  CategoryModel(
    image: "assets/mountain.png",
    nmae: "Moutain",
  ),
];
final rateing = RatingBar.builder(itemSize:20,
  itemBuilder: (context, index) => Icon(
    Icons.star,
    color: yellow,
  ),
  onRatingUpdate: (rating) {},
  minRating: 4,
);

const point ="4.2";
const  beach = "Kula,Beach";
const place ="Goa, India";
const subtitle =  "Lorem Ipsum has been the industry's standard dummy  when an unknown printer took a galley of type and scrambled it to make a type specimen book";

