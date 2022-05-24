

import 'package:shared_preferences/shared_preferences.dart';

class Preferences{

 static late SharedPreferences _prefs;

 static String _name = '';
 static bool _darkmode = false;
 static int _gender = 1;

 static Future init () async{
   _prefs = await SharedPreferences.getInstance();
 }

  static String get name{
    return _prefs.getString('name') ?? _name;
  }

  static set name(String name){
    _name = name;
    _prefs.setString('name', name);
  }

  static bool get darkmode{
    return _prefs.getBool('darkmode') ?? _darkmode;
  }

  static set darkmode(bool value){
    _darkmode = value;
    _prefs.setBool('darkmode', value);
  }

static int get gender{
    return _prefs.getInt('gender') ?? _gender;
  }

  static set gender(int value){
    _gender = value;
    _prefs.setInt('gender', gender);
  }

}