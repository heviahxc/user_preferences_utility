import 'package:flutter/material.dart';
import 'package:preferences_app/screens/screens.dart';

class SideMenu extends StatelessWidget {
   
  const SideMenu({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(
        padding: EdgeInsets.zero,
        children: [
          _DrawerHeader(),
          ListTile(
            leading: const Icon(Icons.pages_outlined),
            title: const Text('Home'),
            onTap: (){
                Navigator.pushReplacementNamed(context, HomeScreen.routName);
            },
            
          ),
           ListTile(
            leading: const Icon(Icons.people_outline),
            title: const Text('People'),
            onTap: (){

            },
            
          ),

           ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text('Seattings'),
            onTap: (){
              
              Navigator.pushReplacementNamed(context, SettingsScreen.routName);
            },
            
          )
        ],
      ),
      

    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/menu-img.jpg'),
          fit: BoxFit.cover 
          ),
      ),
      );
  }
}