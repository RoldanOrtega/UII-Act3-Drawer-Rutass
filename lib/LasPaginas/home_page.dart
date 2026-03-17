import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const Color rosaClaro = Color(0xFFFFC1E3);
    const Color rosaFuerte = Color(0xFFF06292);
    const Color negroElegante = Color(0xFF121212);

    return Scaffold(
      backgroundColor: negroElegante,
      appBar: AppBar(
        backgroundColor: rosaClaro,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu_book, color: negroElegante), 
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: const Text(
          "LECTURAS",
          style: TextStyle(color: negroElegante, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Container(
          color: rosaClaro,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              // CONTENEDOR DEL ENCABEZADO (Reemplaza al DrawerHeader para dar más espacio)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
                decoration: const BoxDecoration(color: rosaFuerte),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        // Imagen de Avatar del Negocio
                        Container(
                          width: 65,
                          height: 65,
                          decoration: const BoxDecoration(
                            color: negroElegante,
                            shape: BoxShape.circle,
                          ),
                          child: ClipOval(
                            child: Image.network(
                              'https://raw.githubusercontent.com/RoldanOrtega/UII-Act3-Drawer-Rutas/refs/heads/main/papapa.JPG', 
                              fit: BoxFit.cover,
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
                    // Información detallada con corazones
                    const Text(
                      "♥♥♥ Andrea Roldan\n"
                      "♥♥♥ Calle Libro 123\n"
                      "♥♥♥ Tel: 555-0192\n"
                      "♥♥♥ contacto@lecturas.com",
                      style: TextStyle(
                        color: negroElegante, 
                        fontSize: 13, 
                        height: 1.5,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                ),
              ),
              // OPCIONES DEL MENÚ
              _buildItem(context, Icons.favorite, "Romance", "/romance"),
              _buildItem(context, Icons.bolt, "Acción", "/accion"),
              _buildItem(context, Icons.emoji_emotions, "Comedia", "/comedia"),
              _buildItem(context, Icons.visibility, "Suspenso", "/suspenso"),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen central 200x200 con el link de inicio1.png
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: rosaClaro, width: 3),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(17),
                child: Image.network(
                  'https://raw.githubusercontent.com/RoldanOrtega/UII-Act3-Drawer-Rutas/refs/heads/main/inicio1.png', 
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              "Tu biblioteca personal",
              style: TextStyle(
                color: Colors.white, 
                fontSize: 22, 
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Explora tus historias favoritas",
              style: TextStyle(color: rosaClaro, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  // Creador de items del menú
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
        Navigator.pop(context); // Cierra el drawer
        Navigator.pushReplacementNamed(context, route); // Navega sin flecha de atrás
      },
    );
  }
}