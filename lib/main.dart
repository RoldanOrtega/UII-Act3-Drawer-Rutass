import 'package:flutter/material.dart';
import 'LasPaginas/home_page.dart';
import 'categorias/romance.dart';
import 'categorias/accion.dart';
import 'categorias/comedia.dart';
import 'categorias/suspenso.dart';

void main() => runApp(const LecturasApp());

class LecturasApp extends StatelessWidget {
  const LecturasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lecturas',
      // Configuración de Colores Globales
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF121212), // Negro mate
        primaryColor: const Color(0xFFFF80AB), // Rosa bonito
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1A1A1A),
          foregroundColor: Color(0xFFFF80AB), // Iconos y letras en rosa
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/romance': (context) => const RomancePage(),
        '/accion': (context) => const AccionPage(),
        '/comedia': (context) => const ComediaPage(),
        '/suspenso': (context) => const SuspensoPage(),
      },
    );
  }
}