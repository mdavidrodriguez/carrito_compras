import 'package:carrito_compras/ui/pages/carrito/clientes.dart';
import 'package:carrito_compras/ui/pages/carrito/compra.dart';
import 'package:carrito_compras/ui/pages/carrito/listaarticulos.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ListarArticulos(),
      routes: {
        '/lista':(context) => const ListarArticulos(),
        '/cliente':(context) => const Cliente(),
        '/compra':(context) => const FinCompra(),

      },
    );
  }
}
