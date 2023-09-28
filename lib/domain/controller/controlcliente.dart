import 'package:get/get.dart';

class ClienteController extends GetxController {
  var nombre = "".obs;
  var telefono = "".obs;

  datoscliente(var nom, var tel) {
    nombre.value = nom;
    telefono.value = tel;
  }

  String get nombrefinal => nombre.value;
  String get telefonofinal => telefono.value;
}
