import 'package:flutter/material.dart';
import 'package:shop_all/themes/theme.dart';

class ThemeProvider with ChangeNotifier{

// recuperer le light mode
  ThemeData _themeData = lightMode;
  //getter 
  ThemeData get themeData => _themeData;
  // setter 
  set themeData(ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }
//gerer la transition
  void toggleTheme(){
    if(_themeData == lightMode){
      themeData = darkMode;
    }else{
      themeData = lightMode;
    }
  }
}