

// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:html';

enum WebPlatform {web, android, ios}

class PlatformUtil{

  static WebPlatform getPlatform(){
    final userAgent = window.navigator.userAgent.toString().toLowerCase();
    if( userAgent.contains("iphone"))  return WebPlatform.ios;
    if( userAgent.contains("ipad")) return WebPlatform.ios;
    if( userAgent.contains("android"))  return WebPlatform.android;
    return WebPlatform.web;
  }
}