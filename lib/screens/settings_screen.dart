import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {

  static  const String routName = 'Settings';
   
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {


  bool darkmode = false;
  int gender = 1;
  String name = 'Pedro';


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
                value: darkmode,
                title: const Text('Darkmode'),
                 onChanged: (value){
                   darkmode = value;

                   setState(() {
                     
                   });
                 }
                ),

                RadioListTile<int>(
                  value: 1, 
                  groupValue: gender, 
                  title: Text('Masculino'),
                  onChanged: (value){
                    gender = value ?? 1;

                   setState(() {
                  });
                  }
                  ),

                   RadioListTile<int>(
                  value: 2, 
                  groupValue: gender, 
                  title: Text('Femenino'),
                  onChanged: (value){
                    gender = value ?? 2;

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

                        name = value;

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