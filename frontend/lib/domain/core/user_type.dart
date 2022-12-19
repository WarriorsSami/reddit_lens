import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

enum UserType {
  normal,
  troll,
  bot,
}

const Map<UserType, Tuple2<String, Color>> userTypeNameColorPairs = {
  UserType.normal: Tuple2('Normal', Color(0xFF05A720)),
  UserType.troll: Tuple2('Troll', Color(0xFFFF0000)),
  UserType.bot: Tuple2('Bot', Color(0xFF0000FF)),
};
