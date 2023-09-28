import 'package:flutter/material.dart';

class ListarArticulos extends StatelessWidget {
  const ListarArticulos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Listado de articuos'),
      ),
      body: Row(
        children: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.delete)),
          const Text('Salchipapa Salvaje'),
          
        ],
      ),
    );
  }
}