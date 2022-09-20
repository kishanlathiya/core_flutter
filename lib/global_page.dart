import 'dart:io';

import 'package:flutter/material.dart';

class Global {
  static File? myImage;

  static String? firstName = '';
  static String? lastName = '';
  static String? phoneNumber = '';
  static String? emailAddress = '';
  static List all_items = [];
  static int list_count = 0;
  static double total_price = 0;
  static double total_count = 0;

  static List<Map> all_Categories = [
    {
      'category_image': 'assets/images/category1.png',
      'category_name': 'Groceries  =>',
    },
    {
      'category_image': 'assets/images/category2.png',
      'category_name': 'Clothes  =>',
    },
    {
      'category_image': 'assets/images/category3.png',
      'category_name': 'Toys  =>',
    },
    {
      'category_image': 'assets/images/category4.png',
      'category_name': 'Footwear  =>',
    },
  ];

  static List<Map> all_Groceries = [
    {
      'image': 'assets/images/banana.png',
      'name': 'Banana',
      'count': 0,
      'bool': true,
      'price': 50,
    },
    {
      'image': 'assets/images/pineapple.png',
      'name': 'Pineapple',
      'count': 0,
      'bool': true,
      'price': 100,
    },
    {
      'image': 'assets/images/cabbage.png',
      'name': 'Cabbage',
      'count': 0,
      'bool': true,
      'price': 30,
    },
    {
      'image': 'assets/images/capsicum.png',
      'name': 'Capsicum',
      'count': 0,
      'bool': true,
      'price': 200,
    },
    {
      'image': 'assets/images/chips.png',
      'name': 'Chips',
      'count': 0,
      'bool': true,
      'price': 40,
    },
    {
      'image': 'assets/images/sauce.png',
      'name': 'Sauce',
      'count': 0,
      'bool': true,
      'price': 170,
    },
  ];

  static List<Map> all_Clothes = [
    {
      'image': 'assets/images/shirt.png',
      'name': 'Shirt',
      'count': 0,
      'bool': true,
      'price': 650,
    },
    {
      'image': 'assets/images/pant.png',
      'name': 'Pant',
      'count': 0,
      'bool': true,
      'price': 850,
    },
    {
      'image': 'assets/images/belt.png',
      'name': 'Belt',
      'count': 0,
      'bool': true,
      'price': 300,
    },
    {
      'image': 'assets/images/socks.png',
      'name': 'Socks',
      'count': 0,
      'bool': true,
      'price': 120,
    },

    {
      'image': 'assets/images/sweater.png',
      'name': 'Sweater',
      'count': 0,
      'bool': true,
      'price': 560,
    },
  ];

  static List<Map> all_Toys = [
    {
      'image': 'assets/images/teddy.png',
      'name': 'Teddy',
      'count': 0,
      'bool': true,
      'price': 320,
    },
    {
      'image': 'assets/images/car.png',
      'name': 'Car',
      'count': 0,
      'bool': true,
      'price': 250,
    },
    {
      'image': 'assets/images/maze.png',
      'name': 'Maze',
      'count': 0,
      'bool': true,
      'price': 140,
    },
    {
      'image': 'assets/images/puzzle.png',
      'name': 'Puzzle',
      'count': 0,
      'bool': true,
      'price': 120,
    },
  ];

  static List<Map> all_Footwears = [
    {
      'image': 'assets/images/slipper.png',
      'name': 'Slipper',
      'count': 0,
      'bool': true,
      'price': 210,
    },
    {
      'image': 'assets/images/shoes.png',
      'name': 'Shoes',
      'count': 0,
      'bool': true,
      'price': 1520,
    },
    {
      'image': 'assets/images/sandal.png',
      'name': 'Sandal',
      'count': 0,
      'bool': true,
      'price': 850,
    },
  ];
}
