

import 'package:business_app/presentation/screens/almacen/home_almacen.dart';
import 'package:business_app/presentation/screens/configuracion/home_config.dart';
import 'package:business_app/presentation/screens/finanzas/home_finanzas.dart';
import 'package:business_app/presentation/screens/home_screen.dart';
import 'package:business_app/presentation/screens/login_screen.dart';
import 'package:business_app/presentation/screens/logistica/home_logistica.dart';
import 'package:business_app/presentation/screens/procesos/home_procesos.dart';
import 'package:business_app/presentation/screens/produccion/home_produccion.dart';
import 'package:business_app/presentation/screens/rrhh/home_rrhh.dart';
import 'package:business_app/presentation/screens/ventas/home_ventas.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [

    GoRoute(
      path: '/home',
      builder: (context, state) => HomeScreen(),
    ),

    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(),
    ),
  
  
  //MENU PRINCIPAL
    GoRoute(
      path: '/almacen',
      name: HomeAlmacen.name,
      builder: (context, state) => const HomeAlmacen(),
    ),
    GoRoute(
      path: '/configuracion',
      name: HomeConfig.name,
      builder: (context, state) => const HomeConfig(),
    ),
    GoRoute(
      path: '/finanzas',
      name: HomeFinanzas.name,
      builder: (context, state) => const HomeFinanzas(),
    ),
    GoRoute(
      path: '/logistica',
      name: HomeLogistica.name,
      builder: (context, state) => const HomeLogistica(),
    ),
    GoRoute(
      path: '/procesos',
      name: HomeProcesos.name,
      builder: (context, state) => const HomeProcesos(),
    ),
    GoRoute(
      path: '/produccion',
      name: HomeProduccion.name,
      builder: (context, state) => const HomeProduccion(),
    ),
    GoRoute(
      path: '/rrhh',
      name: HomeRrhh.name,
      builder: (context, state) => const HomeRrhh(),
    ),
    GoRoute(
      path: '/ventas',
      name: HomeVentas.name,
      builder: (context, state) => const HomeVentas(),
    ),

  ]
);