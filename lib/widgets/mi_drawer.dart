import 'package:flutter/material.dart';

class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const Color rosaFuerte = Color(0xFFF06292); 
    const Color rosaClaro = Color(0xFFFFC1E3);
    const Color negroElegante = Color(0xFF121212);

    return Drawer(
      child: Container(
        color: rosaClaro,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // USAMOS UN CONTAINER EN LUGAR DE DRAWERHEADER PARA MÁS ESPACIO
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
              decoration: const BoxDecoration(color: rosaFuerte),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      // Imagen de Avatar del Negocio
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: negroElegante,
                          shape: BoxShape.circle,
                          border: Border.all(color: negroElegante, width: 2),
                        ),
                        child: ClipOval(
                          child: Image.network(
                            'https://raw.githubusercontent.com/RoldanOrtega/UII-Act3-Drawer-Rutas/refs/heads/main/papapa.JPG',
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(Icons.book, color: rosaClaro);
                            },
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        "Lecturas",
                        style: TextStyle(
                          color: negroElegante, 
                          fontWeight: FontWeight.bold, 
                          fontSize: 24
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  // Información con corazones y espaciado corregido
                  const Text(
                    "♥♥♥ Andrea Roldan\n"
                    "♥♥♥ Calle Libro 123\n"
                    "♥♥♥ Tel: 555-0192\n"
                    "♥♥♥ contacto@lecturas.com",
                    style: TextStyle(
                      color: negroElegante, 
                      fontSize: 13, 
                      height: 1.5, // Interlineado para que respire el texto
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ],
              ),
            ),
            // OPCIONES DEL MENÚ
            _buildItem(context, Icons.home, "Inicio", "/"),
            _buildItem(context, Icons.favorite, "Romance", "/romance"),
            _buildItem(context, Icons.bolt, "Acción", "/accion"),
            _buildItem(context, Icons.emoji_emotions, "Comedia", "/comedia"),
            _buildItem(context, Icons.visibility, "Suspenso", "/suspenso"),
          ],
        ),
      ),
    );
  }

  Widget _buildItem(BuildContext context, IconData icon, String title, String route) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(
        title, 
        style: const TextStyle(
          color: Colors.black, 
          fontWeight: FontWeight.bold,
          fontSize: 16
        )
      ),
      onTap: () {
        Navigator.pop(context); // Cierra el Drawer
        Navigator.pushReplacementNamed(context, route); // Cambia de pantalla
      },
    );
  }
}