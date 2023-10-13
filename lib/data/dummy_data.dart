import 'package:flutter/material.dart';
import 'package:untitled/models/size_shoes.dart';
import '../models/models.dart';

final List<ShoeModel> availableShoes = [
  ShoeModel(
    name: "NIKE",
    model: "AIR-MAX",
    price: 130.00,
    imgAddress: "assets/images/nike1.png",
    modelColor: const Color(0xffDE0106),
    numberSelected: 1,
    sizeShoes: SizeShoes(sizeShoes: 40, country: "UK")
  ),
  ShoeModel(
    name: "NIKE",
    model: "AIR-JORDAN MID",
    price: 190.00,
    imgAddress: "assets/images/nike8.png",
    modelColor: const Color(0xff3F7943),
    numberSelected: 1,
    sizeShoes: SizeShoes(sizeShoes: 40, country: "UK")
  ),
  ShoeModel(
    name: "NIKE",
    model: "ZOOM",
    price: 160.00,
    imgAddress: "assets/images/nike2.png",
    modelColor: const Color(0xffE66863),
    numberSelected: 1,
    sizeShoes: SizeShoes(sizeShoes: 40, country: "UK")
  ),
  ShoeModel(
    name: "NIKE",
    model: "Air-FORCE",
    price: 110.00,
    imgAddress: "assets/images/nike3.png",
    modelColor: const Color(0xffD7D8DC),
    numberSelected: 1,
    sizeShoes: SizeShoes(sizeShoes: 40, country: "UK")
  ),
  ShoeModel(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 150.00,
    imgAddress: "assets/images/nike5.png",
    modelColor: const Color(0xff37376B),
    numberSelected: 1,
    sizeShoes: SizeShoes(sizeShoes: 40, country: "UK")
  ),
  ShoeModel(
    name: "NIKE",
    model: "ZOOM",
    price: 115.00,
    imgAddress: "assets/images/nike4.png",
    modelColor: const Color(0xffE4E3E8),
    numberSelected: 1,
    sizeShoes: SizeShoes(sizeShoes: 40, country: "UK")
  ),
  ShoeModel(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 150.00,
    imgAddress: "assets/images/nike7.png",
    modelColor: const Color(0xffD68043),
    numberSelected: 1,
    sizeShoes: SizeShoes(sizeShoes: 40, country: "UK")
  ),
  ShoeModel(
    name: "NIKE",
    model: "AIR-JORDAN LOW",
    price: 150.00,
    imgAddress: "assets/images/nike6.png",
    modelColor: const Color(0xffE2E3E5),
    numberSelected: 1,
    sizeShoes: SizeShoes(sizeShoes: 40, country: "UK")
  ),
];

List<ShoeModel> itemsOnBag = [];

final List<UserStatus> userStatus = [
  UserStatus(
    emoji: '😴',
    txt: "Away",
    selectColor: const Color(0xff121212),
    unSelectColor: const Color(0xffbfbfbf),
  ),
  UserStatus(
    emoji: '💻',
    txt: "At Work",
    selectColor: const Color(0xff05a35c),
    unSelectColor: const Color(0xffCEEBD9),
  ),
  UserStatus(
    emoji: '🎮',
    txt: "Gaming",
    selectColor: const Color(0xffFFD237),
    unSelectColor: const Color(0xffFDDFBB),
  ),
  UserStatus(
    emoji: '🤫',
    txt: "Busy",
    selectColor: const Color(0xffba3a3a),
    unSelectColor: const Color(0xffdb9797),
  ),
];

final List categories = [
  'Nike',
  'Adidas',
  'Jordan',
  'Puma',
  'Gucci',
  'Tom Ford',
  'Koio',
];
final List featured = [
  'New',
  'Featured',
  'Upcoming',
];

final List<int> sizes = [40, 41, 42, 43];