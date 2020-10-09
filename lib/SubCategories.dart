import 'package:swe444/List_info.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swe444/profile.dart';
import 'package:swe444/NewRecipe.dart';

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
  List<recipe> ListOfCurrentCateogry = new List<recipe>();
  int category;
  var cat = [
    "assets/Juice_page@3x.png",
    "assets/Apptizers_page@3x.png",
    "assets/Main Dishes_page@3x.png",
    "assets/Salads_page@3x.png",
    "assets/Soup_page@3x.png",
    "assets/Sweets_page@3x.png"
  ];

  var cat1 = ["Juice", "Appetizers", "Main Dishes", "Salads", "Soup", "Sweets"];
  List<recipe> ListOfCateogry = [
    recipe(
        caterogry: 0,
        name: "Orange ",
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
        name: "Steak",
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
        name: "Steak",
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
        name: "Steak",
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
        name: "Steak",
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
        name: "Steak",
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
        name: "Steak",
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
        name: "Steak",
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
        name: "Steak",
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
        name: "Steak",
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
        name: "Steak",
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
        name: "Steak",
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
        name: "Steak",
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
        name: "Steak",
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
        name: "Steak",
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
        name: "Steak",
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
        name: "Steak",
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
        name: "Steak",
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

  catogory(this.weidth, this.height, this.category);



  @override
  Widget build(BuildContext context) {
    ListOfCurrentCateogry.clear();

    for (int i = 0; i < ListOfCateogry.length; i++) {
      if (ListOfCateogry[i].caterogry == category)
        ListOfCurrentCateogry.add(ListOfCateogry.elementAt(i));
    }
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromRGBO(242, 171, 39, 1),
        height: 50,
        items: [
          Image.asset('assets/Juice_icon@3x.png'),
          Image.asset('assets/Appetizers_icon@3x.png'),
          Image.asset('assets/Main Dishes_icon@3x.png'),
          Image.asset('assets/Salads_icon@3x.png'),
          Image.asset('assets/Soup_icon@3x.png'),
          Image.asset('assets/Sweets _icon@3x.png'),
          Icon(Icons.person)
        ],
        onTap: (index) {
          setState(
            () {
              if (index < 6) {
                category = index;
                for (int i = 0; i < ListOfCateogry.length; i++) {
                  if (ListOfCateogry[i].caterogry == category)
                    ListOfCurrentCateogry.add(ListOfCateogry.elementAt(i));
                }
              } else {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) =>
                            new Profile(weidth, height, ListOfCateogry)));
              }
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) =>
                      new AddPage(weidth,height)));
        },
        backgroundColor: Color(0xfff2780c),
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Center(
          child: Text(
            cat1[category],
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: 'OleoScript'),
          ),
        ),
        backgroundColor: Color(0xfff2b705),
        // elevation: 0,
        // bottomOpacity: 0,
      ),
      body: Container(
        child: ListInfo(ListOfCurrentCateogry, weidth, height),
      ),
    );
  }
}

class recipe {
  final String name, decraption, path, time;
  final int caterogry;

  recipe({this.name, this.decraption, this.path, this.time, this.caterogry});
}
