import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {

  static  const String routName = 'Settings';
   
  const SettingsScreen({Key? key}) : super(key: key);
  
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
                value: true,
                title: const Text('Darkmode'),
                 onChanged: (value){

                 }
                ),

                RadioListTile<int>(
                  value: 1, 
                  groupValue: 1, 
                  title: Text('Masculino'),
                  onChanged: (value){

                  }
                  ),

                   RadioListTile<int>(
                  value: 2, 
                  groupValue: 1, 
                  title: Text('Femenino'),
                  onChanged: (value){

                  }
                  ),
                  const Divider(),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      initialValue: 'Felipe',
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