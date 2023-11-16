import 'package:business_app/config/menu/menu_items.dart';
import 'package:business_app/presentation/providers/state_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SideMenu extends ConsumerStatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  SideMenuState createState() => SideMenuState();
}

class SideMenuState extends ConsumerState<SideMenu> {
  @override
  Widget build(BuildContext context) {

    final hasNotch = MediaQuery.of(context).viewPadding.top < 35;
    final isDarkMode = ref.watch(isDarkModeProvider);

    return NavigationDrawer(
      onDestinationSelected: (value) {
        setState(() {});
        if (value == 8) {
          ref.read(isDarkModeProvider.notifier).toggleDarkMode();
          return;
        }
        if (value == 9){
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

        NavigationDrawerDestination(
          icon: isDarkMode 
          ? const Icon(Icons.light_mode_outlined)
          : const Icon(Icons.dark_mode_outlined), 
          label: isDarkMode
          ? const Text('Modo Claro')
          : const Text('Modo Oscuro')
        ),

        const NavigationDrawerDestination(
          icon: Icon(Icons.logout_outlined) ,
          label: Text("Cerrar sesión"),
        )
        
      ]
    );
  }
}