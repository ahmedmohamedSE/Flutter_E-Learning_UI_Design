import 'package:flutter/material.dart';


class Product {
  
  final int id, courses;
  final String image, title;
  final Color color;
  
  Product({
    required this.image,
    required this.title,
    required this.courses,
    required this.color,
    required this.id,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Graphic Design",
    image: "assets/images/graphics.png",
    color: Color(0xFF71b8ff),
    courses: 16,
  ),
  Product(
    id: 2,
    title: "Programming",
    image: "assets/images/programming.png",
    color: Color(0xFFff6374),
    courses: 22,
  ),
  Product(
    id: 3,
    title: "Finance",
    image: "assets/images/finance.png",
    color: Color(0xFFffaa5b),
    courses: 15,
  ),
  Product(
    id: 4,
    title: "UI/Ux design",
    image: "assets/images/ux.png",
    color: Color(0xFF9ba0fc),
    courses: 18,
  ),
  Product(
    id: 5,
    title: "Accounting Courses",
    image: "assets/images/ux.png",
    color: Color.fromARGB(255, 155, 229, 252),
    courses: 12,
  ),
  Product(
    id: 6,
    title: "AI Courses",
    image: "assets/images/ux.png",
    color: Color.fromARGB(255, 155, 252, 187),
    courses: 22,
  ),
  Product(
    id: 7,
    title: "Cyber Security",
    image: "assets/images/ux.png",
    color: Color.fromARGB(255, 80, 88, 235),
    courses: 10,
  ),
  Product(
    id: 8,
    title: "Operating Systems",
    image: "assets/images/ux.png",
    color: Color.fromARGB(255, 248, 227, 134),
    courses: 15,
  ),
];
