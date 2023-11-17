import 'package:business_app/config/menu/menu_items.dart';
import 'package:business_app/presentation/providers/state_providers.dart';
import 'package:business_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});  

  // List itemMenu = [
  //   //[title, color, image]
  //   ["Logística", Colors.green, "assets/entrega-logistica.png"],
  //   ["Procesos", Colors.purple, "assets/flujo-de-trabajo.png"],
  //   ["Almacén", Colors.orange, "assets/maquina-elevadora.png"],
  //   ["Finanzas", Colors.teal, "assets/presupuesto.png"],
  //   ["Producción", Colors.brown, "assets/produccion-en-masa.png"],
  //   ["Ventas", Colors.red, "assets/punto-de-venta.png"],
  //   ["RR.HH", Colors.cyan, "assets/reclutamiento.png"],
  //   ["Configuración", Colors.blue, "assets/configuraciones.png"],
  // ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    const menuitem = appMenuItems;
    return Scaffold(
      key: scaffoldKey,
      drawer: SideMenu(scaffoldKey: scaffoldKey,),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            toolbarHeight: 70,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.symmetric(vertical: 10),
              title: CustomAppbar(),
            ),
          ),

          SliverGrid.builder(
            
            itemCount: menuitem.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1
            ), 

            itemBuilder: (context, index) {
              final menuItems = menuitem[index];
              return CustomCard(
                title: menuItems.title,
                color: menuItems.color, 
                image: menuItems.image,
                link: menuItems.link,
                index: index,
              );
            },
          )

        ],
      )
    );
  }
}