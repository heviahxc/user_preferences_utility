import 'package:flutter/material.dart';
import 'package:preferences_app/providers/theme_provider.dart';
import 'package:preferences_app/share_preferences/preferences.dart';
import 'package:preferences_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';

class SettingsScreen extends StatefulWidget {

  static  const String routName = 'Settings';
   
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {


  //bool darkmode = Preferences.darkmode;
  //int gender = Preferences.gender;
  //String name = Preferences.name;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ajustes', style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),),
              const Divider(),
              
              SwitchListTile.adaptive(
                value: Preferences.darkmode,
                title: const Text('Darkmode'),
                 onChanged: (value){
                   Preferences.darkmode = value;
                  final themeProvider = Provider.of<ThemeProvider>(context, listen: false);

                  value ? themeProvider.setDarkMode() : themeProvider.setLightMode();
                   setState(() {
                     
                   });
                 }
                ),

                RadioListTile<int>(
                  value: 1, 
                  groupValue: Preferences.gender, 
                  title: const Text('Masculino'),
                  onChanged: (value){
                    Preferences.gender = value ?? 1;

                   setState(() {
                  });
                  }
                  ),

                   RadioListTile<int>(
                  value: 2, 
                  groupValue: Preferences.gender, 
                  title: const Text('Femenino'),
                  onChanged: (value){
                    Preferences.gender = value ?? 2;

                   setState(() {
                  });
                  }
                  ),
                  const Divider(),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      initialValue: 'Felipe',
                      onChanged: (value){

                        Preferences.name = value;

                        setState(() {
                          
                        });
                      },
                      decoration: const InputDecoration(
                        labelText: 'Nombre',
                        helperText: 'Nombre del usuario'
                      ),
                    ))
            ],
          ) 
          ),
      )
    );
  }
}