import 'package:carrito_compras/domain/controller/controlcliente.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cliente extends StatelessWidget {
  const Cliente({super.key});

  @override
  Widget build(BuildContext context) {
    ClienteController cc = Get.find();
    TextEditingController txtNombre =
        TextEditingController(text: cc.nombrefinal);
    TextEditingController txtTelefono =
        TextEditingController(text: cc.telefonofinal);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seleccionar Cliente'),
      ),
      body: Column(
        children: [
          Textos(
            txtNombre: txtNombre,
            titulo: 'Ingrese el Nombre',
          ),
          Textos(txtNombre: txtTelefono, titulo: 'Ingrese el Telefono'),
          ElevatedButton(
              onPressed: () {
                cc.datoscliente(txtNombre.text, txtTelefono.text);
                Get.toNamed('/compra');
              },
              child: const Text('Finalizar Compra'))
        ],
      ),
    );
  }
}

class Textos extends StatelessWidget {
  const Textos({super.key, required this.txtNombre, required this.titulo});

  final TextEditingController txtNombre;
  final String titulo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: txtNombre,
        decoration: InputDecoration(labelText: titulo),
      ),
    );
  }
}
