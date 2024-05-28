import 'package:flutter/material.dart';
import 'package:gui_audible_flutter/views/layout_page.dart';
import 'package:gui_audible_flutter/views/home_page.dart';
import 'package:gui_audible_flutter/views/clientes_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Audible - Gestión',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, // Ocultar el banner de depuración
      initialRoute: '/',
      routes: {
        '/': (context) => LayoutPage(child: HomePage()),
        '/clientes': (context) => LayoutPage(child: ClientesPage()),
        // Define las demás rutas según sea necesario
      },
    );
  }
}
