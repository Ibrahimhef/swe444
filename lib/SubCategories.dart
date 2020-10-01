import 'dart:math';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/main.dart';
import 'package:swe444/profile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'TextStyle.dart';

class Catogory extends StatefulWidget {
  final double weidth, height;

  Catogory(this.weidth, this.height);

  @override
  State<StatefulWidget> createState() {
    return catogory(weidth, height, 0);
  }
}

class catogory extends State<Catogory> {
  final double weidth, height;
  int category;
  var cat = [
    "assets/Juice_page@3x.png",
    "assets/Apptizers_page@3x.png",
    "assets/Main Dishes_page@3x.png",
    "assets/Salads_page@3x.png",
    "assets/Soup_page@3x.png",
    "assets/Sweets_page@3x.png"
  ];
  var color = [
    Color.fromRGBO(242, 171, 39, 0.7),
    Color.fromRGBO(217, 125, 13, 0.7),
    Color.fromRGBO(115, 32, 2, 0.7),
    Color.fromRGBO(217, 77, 26, 0.7)
  ];

  var cat1 = ["Juice", "Appetizers", "Main Dishes", "Salads", "Soup", "Sweets"];
  List<recipe> test = [
    recipe(
        caterogry: 0,
        name: "Orange Juice",
        decraption: "Like any orange",
        path: "assets/Juice_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 1,
        name: "Mozzarella sticks",
        decraption:
            "Mozzarella sticks are elongated pieces of battered or breaded mozzarella, usually served as hors d'oeuvre.",
        path: "assets/Appetizers_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 2,
        name: "Stack",
        decraption:
            "A  steak is a meat generally sliced across the muscle fibers, potentially including a bone. It is normally grilled, though can also be pan-fried. It is often grilled in an attempt to replicate the flavor of steak cooked over the glowing coals of an open fire",
        path: "assets/Main Dishes_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 3,
        name: "Salads",
        decraption:
            "A salad is a dish consisting of pieces of food in a mixture, with at least one raw ingredient.",
        path: "assets/Salads_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 4,
        name: "Soup",
        decraption:
            "Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.",
        path: "assets/Soup_icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 5,
        name: "Cookies",
        decraption:
            "A cookie is a baked or cooked food that is typically small, flat and sweet. ",
        path: "assets/Sweets _icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 0,
        name: "Orange Juice",
        decraption: "Like any orange",
        path: "assets/Juice_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 1,
        name: "Mozzarella sticks",
        decraption:
            "Mozzarella sticks are elongated pieces of battered or breaded mozzarella, usually served as hors d'oeuvre.",
        path: "assets/Appetizers_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 2,
        name: "Stack",
        decraption:
            "A  steak is a meat generally sliced across the muscle fibers, potentially including a bone. It is normally grilled, though can also be pan-fried. It is often grilled in an attempt to replicate the flavor of steak cooked over the glowing coals of an open fire",
        path: "assets/Main Dishes_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 3,
        name: "Salads",
        decraption:
            "A salad is a dish consisting of pieces of food in a mixture, with at least one raw ingredient.",
        path: "assets/Salads_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 4,
        name: "Soup",
        decraption:
            "Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.",
        path: "assets/Soup_icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 5,
        name: "Cookies",
        decraption:
            "A cookie is a baked or cooked food that is typically small, flat and sweet. ",
        path: "assets/Sweets _icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 0,
        name: "Orange Juice",
        decraption: "Like any orange",
        path: "assets/Juice_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 1,
        name: "Mozzarella sticks",
        decraption:
            "Mozzarella sticks are elongated pieces of battered or breaded mozzarella, usually served as hors d'oeuvre.",
        path: "assets/Appetizers_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 2,
        name: "Stack",
        decraption:
            "A  steak is a meat generally sliced across the muscle fibers, potentially including a bone. It is normally grilled, though can also be pan-fried. It is often grilled in an attempt to replicate the flavor of steak cooked over the glowing coals of an open fire",
        path: "assets/Main Dishes_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 3,
        name: "Salads",
        decraption:
            "A salad is a dish consisting of pieces of food in a mixture, with at least one raw ingredient.",
        path: "assets/Salads_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 4,
        name: "Soup",
        decraption:
            "Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.",
        path: "assets/Soup_icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 5,
        name: "Cookies",
        decraption:
            "A cookie is a baked or cooked food that is typically small, flat and sweet. ",
        path: "assets/Sweets _icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 0,
        name: "Orange Juice",
        decraption: "Like any orange",
        path: "assets/Juice_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 1,
        name: "Mozzarella sticks",
        decraption:
            "Mozzarella sticks are elongated pieces of battered or breaded mozzarella, usually served as hors d'oeuvre.",
        path: "assets/Appetizers_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 2,
        name: "Stack",
        decraption:
            "A  steak is a meat generally sliced across the muscle fibers, potentially including a bone. It is normally grilled, though can also be pan-fried. It is often grilled in an attempt to replicate the flavor of steak cooked over the glowing coals of an open fire",
        path: "assets/Main Dishes_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 3,
        name: "Salads",
        decraption:
            "A salad is a dish consisting of pieces of food in a mixture, with at least one raw ingredient.",
        path: "assets/Salads_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 4,
        name: "Soup",
        decraption:
            "Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.",
        path: "assets/Soup_icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 5,
        name: "Cookies",
        decraption:
            "A cookie is a baked or cooked food that is typically small, flat and sweet. ",
        path: "assets/Sweets _icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 0,
        name: "Orange Juice",
        decraption: "Like any orange",
        path: "assets/Juice_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 1,
        name: "Mozzarella sticks",
        decraption:
            "Mozzarella sticks are elongated pieces of battered or breaded mozzarella, usually served as hors d'oeuvre.",
        path: "assets/Appetizers_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 2,
        name: "Stack",
        decraption:
            "A  steak is a meat generally sliced across the muscle fibers, potentially including a bone. It is normally grilled, though can also be pan-fried. It is often grilled in an attempt to replicate the flavor of steak cooked over the glowing coals of an open fire",
        path: "assets/Main Dishes_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 3,
        name: "Salads",
        decraption:
            "A salad is a dish consisting of pieces of food in a mixture, with at least one raw ingredient.",
        path: "assets/Salads_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 4,
        name: "Soup",
        decraption:
            "Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.",
        path: "assets/Soup_icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 5,
        name: "Cookies",
        decraption:
            "A cookie is a baked or cooked food that is typically small, flat and sweet. ",
        path: "assets/Sweets _icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 0,
        name: "Orange Juice",
        decraption: "Like any orange",
        path: "assets/Juice_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 1,
        name: "Mozzarella sticks",
        decraption:
            "Mozzarella sticks are elongated pieces of battered or breaded mozzarella, usually served as hors d'oeuvre.",
        path: "assets/Appetizers_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 2,
        name: "Stack",
        decraption:
            "A  steak is a meat generally sliced across the muscle fibers, potentially including a bone. It is normally grilled, though can also be pan-fried. It is often grilled in an attempt to replicate the flavor of steak cooked over the glowing coals of an open fire",
        path: "assets/Main Dishes_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 3,
        name: "Salads",
        decraption:
            "A salad is a dish consisting of pieces of food in a mixture, with at least one raw ingredient.",
        path: "assets/Salads_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 4,
        name: "Soup",
        decraption:
            "Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.",
        path: "assets/Soup_icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 5,
        name: "Cookies",
        decraption:
            "A cookie is a baked or cooked food that is typically small, flat and sweet. ",
        path: "assets/Sweets _icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 0,
        name: "Orange Juice",
        decraption: "Like any orange",
        path: "assets/Juice_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 1,
        name: "Mozzarella sticks",
        decraption:
            "Mozzarella sticks are elongated pieces of battered or breaded mozzarella, usually served as hors d'oeuvre.",
        path: "assets/Appetizers_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 2,
        name: "Stack",
        decraption:
            "A  steak is a meat generally sliced across the muscle fibers, potentially including a bone. It is normally grilled, though can also be pan-fried. It is often grilled in an attempt to replicate the flavor of steak cooked over the glowing coals of an open fire",
        path: "assets/Main Dishes_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 3,
        name: "Salads",
        decraption:
            "A salad is a dish consisting of pieces of food in a mixture, with at least one raw ingredient.",
        path: "assets/Salads_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 4,
        name: "Soup",
        decraption:
            "Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.",
        path: "assets/Soup_icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 5,
        name: "Cookies",
        decraption:
            "A cookie is a baked or cooked food that is typically small, flat and sweet. ",
        path: "assets/Sweets _icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 0,
        name: "Orange Juice",
        decraption: "Like any orange",
        path: "assets/Juice_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 1,
        name: "Mozzarella sticks",
        decraption:
            "Mozzarella sticks are elongated pieces of battered or breaded mozzarella, usually served as hors d'oeuvre.",
        path: "assets/Appetizers_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 2,
        name: "Stack",
        decraption:
            "A  steak is a meat generally sliced across the muscle fibers, potentially including a bone. It is normally grilled, though can also be pan-fried. It is often grilled in an attempt to replicate the flavor of steak cooked over the glowing coals of an open fire",
        path: "assets/Main Dishes_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 3,
        name: "Salads",
        decraption:
            "A salad is a dish consisting of pieces of food in a mixture, with at least one raw ingredient.",
        path: "assets/Salads_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 4,
        name: "Soup",
        decraption:
            "Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.",
        path: "assets/Soup_icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 5,
        name: "Cookies",
        decraption:
            "A cookie is a baked or cooked food that is typically small, flat and sweet. ",
        path: "assets/Sweets _icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 0,
        name: "Orange Juice",
        decraption: "Like any orange",
        path: "assets/Juice_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 1,
        name: "Mozzarella sticks",
        decraption:
            "Mozzarella sticks are elongated pieces of battered or breaded mozzarella, usually served as hors d'oeuvre.",
        path: "assets/Appetizers_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 2,
        name: "Stack",
        decraption:
            "A  steak is a meat generally sliced across the muscle fibers, potentially including a bone. It is normally grilled, though can also be pan-fried. It is often grilled in an attempt to replicate the flavor of steak cooked over the glowing coals of an open fire",
        path: "assets/Main Dishes_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 3,
        name: "Salads",
        decraption:
            "A salad is a dish consisting of pieces of food in a mixture, with at least one raw ingredient.",
        path: "assets/Salads_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 4,
        name: "Soup",
        decraption:
            "Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.",
        path: "assets/Soup_icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 5,
        name: "Cookies",
        decraption:
            "A cookie is a baked or cooked food that is typically small, flat and sweet. ",
        path: "assets/Sweets _icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 0,
        name: "Orange Juice",
        decraption: "Like any orange",
        path: "assets/Juice_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 1,
        name: "Mozzarella sticks",
        decraption:
            "Mozzarella sticks are elongated pieces of battered or breaded mozzarella, usually served as hors d'oeuvre.",
        path: "assets/Appetizers_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 2,
        name: "Stack",
        decraption:
            "A  steak is a meat generally sliced across the muscle fibers, potentially including a bone. It is normally grilled, though can also be pan-fried. It is often grilled in an attempt to replicate the flavor of steak cooked over the glowing coals of an open fire",
        path: "assets/Main Dishes_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 3,
        name: "Salads",
        decraption:
            "A salad is a dish consisting of pieces of food in a mixture, with at least one raw ingredient.",
        path: "assets/Salads_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 4,
        name: "Soup",
        decraption:
            "Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.",
        path: "assets/Soup_icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 5,
        name: "Cookies",
        decraption:
            "A cookie is a baked or cooked food that is typically small, flat and sweet. ",
        path: "assets/Sweets _icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 0,
        name: "Orange Juice",
        decraption: "Like any orange",
        path: "assets/Juice_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 1,
        name: "Mozzarella sticks",
        decraption:
            "Mozzarella sticks are elongated pieces of battered or breaded mozzarella, usually served as hors d'oeuvre.",
        path: "assets/Appetizers_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 2,
        name: "Stack",
        decraption:
            "A  steak is a meat generally sliced across the muscle fibers, potentially including a bone. It is normally grilled, though can also be pan-fried. It is often grilled in an attempt to replicate the flavor of steak cooked over the glowing coals of an open fire",
        path: "assets/Main Dishes_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 3,
        name: "Salads",
        decraption:
            "A salad is a dish consisting of pieces of food in a mixture, with at least one raw ingredient.",
        path: "assets/Salads_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 4,
        name: "Soup",
        decraption:
            "Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.",
        path: "assets/Soup_icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 5,
        name: "Cookies",
        decraption:
            "A cookie is a baked or cooked food that is typically small, flat and sweet. ",
        path: "assets/Sweets _icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 0,
        name: "Orange Juice",
        decraption: "Like any orange",
        path: "assets/Juice_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 1,
        name: "Mozzarella sticks",
        decraption:
            "Mozzarella sticks are elongated pieces of battered or breaded mozzarella, usually served as hors d'oeuvre.",
        path: "assets/Appetizers_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 2,
        name: "Stack",
        decraption:
            "A  steak is a meat generally sliced across the muscle fibers, potentially including a bone. It is normally grilled, though can also be pan-fried. It is often grilled in an attempt to replicate the flavor of steak cooked over the glowing coals of an open fire",
        path: "assets/Main Dishes_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 3,
        name: "Salads",
        decraption:
            "A salad is a dish consisting of pieces of food in a mixture, with at least one raw ingredient.",
        path: "assets/Salads_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 4,
        name: "Soup",
        decraption:
            "Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.",
        path: "assets/Soup_icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 5,
        name: "Cookies",
        decraption:
            "A cookie is a baked or cooked food that is typically small, flat and sweet. ",
        path: "assets/Sweets _icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 0,
        name: "Orange Juice",
        decraption: "Like any orange",
        path: "assets/Juice_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 1,
        name: "Mozzarella sticks",
        decraption:
            "Mozzarella sticks are elongated pieces of battered or breaded mozzarella, usually served as hors d'oeuvre.",
        path: "assets/Appetizers_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 2,
        name: "Stack",
        decraption:
            "A  steak is a meat generally sliced across the muscle fibers, potentially including a bone. It is normally grilled, though can also be pan-fried. It is often grilled in an attempt to replicate the flavor of steak cooked over the glowing coals of an open fire",
        path: "assets/Main Dishes_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 3,
        name: "Salads",
        decraption:
            "A salad is a dish consisting of pieces of food in a mixture, with at least one raw ingredient.",
        path: "assets/Salads_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 4,
        name: "Soup",
        decraption:
            "Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.",
        path: "assets/Soup_icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 5,
        name: "Cookies",
        decraption:
            "A cookie is a baked or cooked food that is typically small, flat and sweet. ",
        path: "assets/Sweets _icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 0,
        name: "Orange Juice",
        decraption: "Like any orange",
        path: "assets/Juice_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 1,
        name: "Mozzarella sticks",
        decraption:
            "Mozzarella sticks are elongated pieces of battered or breaded mozzarella, usually served as hors d'oeuvre.",
        path: "assets/Appetizers_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 2,
        name: "Stack",
        decraption:
            "A  steak is a meat generally sliced across the muscle fibers, potentially including a bone. It is normally grilled, though can also be pan-fried. It is often grilled in an attempt to replicate the flavor of steak cooked over the glowing coals of an open fire",
        path: "assets/Main Dishes_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 3,
        name: "Salads",
        decraption:
            "A salad is a dish consisting of pieces of food in a mixture, with at least one raw ingredient.",
        path: "assets/Salads_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 4,
        name: "Soup",
        decraption:
            "Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.",
        path: "assets/Soup_icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 5,
        name: "Cookies",
        decraption:
            "A cookie is a baked or cooked food that is typically small, flat and sweet. ",
        path: "assets/Sweets _icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 0,
        name: "Orange Juice",
        decraption: "Like any orange",
        path: "assets/Juice_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 1,
        name: "Mozzarella sticks",
        decraption:
            "Mozzarella sticks are elongated pieces of battered or breaded mozzarella, usually served as hors d'oeuvre.",
        path: "assets/Appetizers_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 2,
        name: "Stack",
        decraption:
            "A  steak is a meat generally sliced across the muscle fibers, potentially including a bone. It is normally grilled, though can also be pan-fried. It is often grilled in an attempt to replicate the flavor of steak cooked over the glowing coals of an open fire",
        path: "assets/Main Dishes_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 3,
        name: "Salads",
        decraption:
            "A salad is a dish consisting of pieces of food in a mixture, with at least one raw ingredient.",
        path: "assets/Salads_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 4,
        name: "Soup",
        decraption:
            "Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.",
        path: "assets/Soup_icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 5,
        name: "Cookies",
        decraption:
            "A cookie is a baked or cooked food that is typically small, flat and sweet. ",
        path: "assets/Sweets _icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 0,
        name: "Orange Juice",
        decraption: "Like any orange",
        path: "assets/Juice_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 1,
        name: "Mozzarella sticks",
        decraption:
            "Mozzarella sticks are elongated pieces of battered or breaded mozzarella, usually served as hors d'oeuvre.",
        path: "assets/Appetizers_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 2,
        name: "Stack",
        decraption:
            "A  steak is a meat generally sliced across the muscle fibers, potentially including a bone. It is normally grilled, though can also be pan-fried. It is often grilled in an attempt to replicate the flavor of steak cooked over the glowing coals of an open fire",
        path: "assets/Main Dishes_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 3,
        name: "Salads",
        decraption:
            "A salad is a dish consisting of pieces of food in a mixture, with at least one raw ingredient.",
        path: "assets/Salads_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 4,
        name: "Soup",
        decraption:
            "Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.",
        path: "assets/Soup_icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 5,
        name: "Cookies",
        decraption:
            "A cookie is a baked or cooked food that is typically small, flat and sweet. ",
        path: "assets/Sweets _icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 0,
        name: "Orange Juice",
        decraption: "Like any orange",
        path: "assets/Juice_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 1,
        name: "Mozzarella sticks",
        decraption:
            "Mozzarella sticks are elongated pieces of battered or breaded mozzarella, usually served as hors d'oeuvre.",
        path: "assets/Appetizers_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 2,
        name: "Stack",
        decraption:
            "A  steak is a meat generally sliced across the muscle fibers, potentially including a bone. It is normally grilled, though can also be pan-fried. It is often grilled in an attempt to replicate the flavor of steak cooked over the glowing coals of an open fire",
        path: "assets/Main Dishes_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 3,
        name: "Salads",
        decraption:
            "A salad is a dish consisting of pieces of food in a mixture, with at least one raw ingredient.",
        path: "assets/Salads_icon@3x.png",
        time: "10 min"),
    recipe(
        caterogry: 4,
        name: "Soup",
        decraption:
            "Soup is a primarily liquid food, generally served warm or hot (but may be cool or cold), that is made by combining ingredients of meat or vegetables with stock, or water. Hot soups are additionally characterized by boiling solid ingredients in liquids in a pot until the flavors are extracted, forming a broth.",
        path: "assets/Soup_icon@3x.png",
        time: "10"),
    recipe(
        caterogry: 5,
        name: "Cookies",
        decraption:
            "A cookie is a baked or cooked food that is typically small, flat and sweet. ",
        path: "assets/Sweets _icon@3x.png",
        time: "10"),
  ];

  List<recipe> test1 = new List<recipe>();
  var random = new Random();

  catogory(this.weidth, this.height, this.category);

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < test.length; i++) {
      if (test[i].caterogry == category) test1.add(test.elementAt(i));
    }
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromRGBO(242, 171, 39, 1),
        height: 50,
        items: [
          Image(
            image: AssetImage('assets/Juice_icon@3x.png'),
          ),
          Image(
            image: AssetImage('assets/Appetizers_icon@3x.png'),
          ),
          Image(
            image: AssetImage('assets/Main Dishes_icon@3x.png'),
          ),
          Image(
            image: AssetImage('assets/Salads_icon@3x.png'),
          ),
          Image(
            image: AssetImage('assets/Soup_icon@3x.png'),
          ),
          Image(
            image: AssetImage('assets/Sweets _icon@3x.png'),
          ),
          Icon(Icons.person)
        ],
        onTap: (index) {
          setState(() {
            if (index < 6) {
              category = index;
              test1.clear();
              for (int i = 0; i < test.length; i++) {
                if (test[i].caterogry == category) test1.add(test.elementAt(i));
              }
            } else {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new Profile(weidth, height)));
            }
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromRGBO(242, 171, 39, 1),
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text(
          cat1[category],
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        width: weidth,
        height: height,
        child: ListView.builder(
            itemCount: test1.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 350,
                    height: 125,
                    child: FittedBox(
                      child: Material(
                        color: color[random.nextInt(3)],
                        elevation: 14.0,
                        borderRadius: BorderRadius.circular(24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              width: 250,
                              height: 125,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
// recipe name
                                  Container(
                                      margin: EdgeInsets.only(bottom: 5),
                                      width: 250,
                                      height: 25,
                                      child: Text(
                                        test1[index].name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      )),
// breif descraption
                                  Container(
                                      width: 250,
                                      height: 50,
                                      child: Text(test1[index].decraption)),
                                  Row(
                                    children: [
                                      Container(
                                          width: 200,
                                          height: 20,
                                          padding: EdgeInsets.only(right: 25),
                                          child: Text(
                                              "time  " + test[index].time)),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 100,
                              height: 125,
                              child: Image(
//image Path
                                image: AssetImage(test1[index].path),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class recipe {
  final String name, decraption, path, time;
  final int caterogry;

  recipe({this.name, this.decraption, this.path, this.time, this.caterogry});
}
