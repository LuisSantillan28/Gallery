// Breakpoints

import 'dart:html';

import 'package:flutter/cupertino.dart';

const _screenMobile = 600.0;
const _screenTablets = 840.0;

enum ScreenSize {small, medium, large}

getWidthScreen(double width){
  print(width);
  if (width < _screenMobile){
    return ScreenSize.small;
  } else if (width>= _screenMobile && width < _screenTablets){
    return ScreenSize.medium;
    } else {
      return ScreenSize.large;
    }
  }