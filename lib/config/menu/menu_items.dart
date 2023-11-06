import 'package:flutter/material.dart';

class MenuItems{
  final String title;
  final color;
  final String image;
  final String link;

  const MenuItems({
    required this.title, 
    required this.color, 
    required this.image,
    required this.link
  });

}

  const appMenuItems = <MenuItems> [

    MenuItems(
      title: "Logística", 
      color: Colors.green, 
      image: "assets/entrega-logistica.png",
      link: "/logistica"

    ),

    MenuItems(
      title: "Procesos", 
      color: Colors.purple, 
      image: "assets/flujo-de-trabajo.png",
      link: "/procesos"
    ),

    MenuItems(
      title: "Almacén", 
      color: Colors.orange, 
      image: "assets/maquina-elevadora.png",
      link: "/almacen"
    ),

    MenuItems(
      title: "Finanzas", 
      color: Colors.teal, 
      image: "assets/presupuesto.png",
      link: "/finanzas"
    ),

    MenuItems(
      title: "Producción", 
      color: Colors.brown, 
      image: "assets/produccion-en-masa.png",
      link: "/produccion"
    ),

    MenuItems(
      title: "Ventas", 
      color: Colors.red, 
      image: "assets/punto-de-venta.png",
      link: "/ventas"
    ),

    MenuItems(
      title: "RR.HH", 
      color: Colors.cyan, 
      image: "assets/reclutamiento.png",
      link: "/rrhh"
    ),

    MenuItems(
      title: "Configuración", 
      color: Colors.blue, 
      image: "assets/configuraciones.png",
      link: "/configuracion"
    ),
    
  ];
