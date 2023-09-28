import 'package:carrito_compras/domain/controller/controlarticulos.dart';
import 'package:carrito_compras/domain/controller/controlcliente.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FinCompra extends StatelessWidget {
  const FinCompra({super.key});

  @override
  Widget build(BuildContext context) {
    ClienteController cc = Get.find();
    ArticuloController ac = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Finalizar Compra'),
      ),
      body: SizedBox(
        height: Get.height * 0.20,
        child: Card(
          child: Column(
            children: [
              Text('Nombre: ${cc.nombrefinal}'),
              Text('Telefono: ${cc.telefonofinal}'),
              Text('Salchipapa: ${ac.totalcantidad}'),
            ],
          ),
        ),
      ),
    );
  }
}
