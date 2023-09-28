import 'package:carrito_compras/domain/controller/controlarticulos.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:get/get.dart';

class ListarArticulos extends StatelessWidget {
  const ListarArticulos({super.key});

  @override
  Widget build(BuildContext context) {
    ArticuloController articuloc = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de articuos'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                Get.toNamed('/cliente');
              },
              child: badges.Badge(
                badgeContent: Obx(() => Text('${articuloc.totalcantidad}')),
                child: const Icon(Icons.shopping_cart),
              ),
            ),
          )
        ],
      ),
      body: Row(
        children: [
          IconButton(
              onPressed: () {
                articuloc.dismunuir();
              },
              icon: const Icon(Icons.delete)),
          const Text('Salchipapa Salvaje'),
          IconButton(
              onPressed: () {
                articuloc.aumentar();
              },
              icon: const Icon(Icons.add_circle_outline))
        ],
      ),
    );
  }
}
