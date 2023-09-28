import 'package:carrito_compras/domain/controller/controlarticulos.dart';
import 'package:carrito_compras/domain/controller/controlcliente.dart';
import 'package:carrito_compras/ui/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
  Get.put(ClienteController());
  Get.put(ArticuloController());
}
