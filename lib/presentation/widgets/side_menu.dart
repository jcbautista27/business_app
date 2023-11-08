import 'package:business_app/config/menu/menu_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {

    final hasNotch = MediaQuery.of(context).viewPadding.top < 35;

    return NavigationDrawer(
      onDestinationSelected: (value) {
        setState(() {});
        if (value == 8){
          context.pushReplacement("/");
          return;
        }
        final menuItem = appMenuItems[value];
        
        //Navegation
        context.push(menuItem.link);
      },
      
      children: [

        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch? 0 : 20, 16, 10),
          child: const Text('Módulos'),
        ),

        ...appMenuItems
        .sublist(0,7)
        .map((value) => 
          NavigationDrawerDestination(
            icon: Image.asset(value.image,width: 25), 
            label: Text(value.title)
          )
        ),

        const Padding(
          padding: EdgeInsets.fromLTRB(28,16,28,10),
          child: Divider(),
        ),

        const Padding(
          padding: EdgeInsets.fromLTRB(28, 10, 16, 10),
          child: Text("Más opciones"),
        ),

        ...appMenuItems
        .sublist(7)
        .map((value) => 
          NavigationDrawerDestination(
            icon: Image.asset(value.image, width: 25,), 
            label: Text(value.title)
          )
        ),

        const NavigationDrawerDestination(
          icon: Icon(Icons.logout_outlined) ,
          label: Text("Cerrar sesión"),
        )
        
      ]
    );
  }
}