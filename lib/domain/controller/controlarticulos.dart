import 'package:get/get.dart';

class ArticuloController extends GetxController {
  var cantidad = 0.obs;

  aumentar() {
    cantidad.value = cantidad.value + 1;
  }

  dismunuir() {
    cantidad.value = cantidad.value - 1;
  }

  int get totalcantidad => cantidad.value;
}
