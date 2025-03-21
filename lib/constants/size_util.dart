import 'package:flutter/cupertino.dart';

class SizeUtil{

  static screenWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }

  static isCompact(BuildContext context){
    return MediaQuery.of(context).size.width <= 500;
  }
}