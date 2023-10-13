import 'package:flutter/material.dart';
import 'package:untitled/models/size_shoes.dart';
class ShoeModel {
  String name;
  String model;
  double price;
  String imgAddress;
  Color modelColor;
  int numberSelected;
  SizeShoes sizeShoes;
  ShoeModel({
    required this.name,
    required this.model,
    required this.price,
    required this.imgAddress,
    required this.modelColor,
    required this.numberSelected,
    required this.sizeShoes
  });
}
