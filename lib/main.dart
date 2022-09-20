import 'package:flutter/material.dart';
import 'package:invoice_generator/allProducts_page.dart';
import 'package:invoice_generator/cart_page.dart';
import 'package:invoice_generator/pdf_page.dart';
import 'package:invoice_generator/select_category_page.dart';
import 'home_page.dart';
import 'splashscreen_page.dart';

void main()
{
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'splashscreen_page',
        routes: {
          'splashscreen_page':(context) =>SplashScreen(),
          '/': (context) => Home(),
          'select_category_page': (context) => SelectCategory(),
          'allProducts_page': (context) => AllProducts(),
          'cart_page': (context) => Cart(),
          'pdf_page': (context) => PDF(),
        },
      )
  );
}