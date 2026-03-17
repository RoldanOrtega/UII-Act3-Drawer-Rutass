import 'package:flutter/material.dart';
import '../widgets/mi_drawer.dart';

class ComediaPage extends StatelessWidget {
  const ComediaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFC1E3),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu_book, color: Colors.black), 
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: const Text("COMEDIA", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      drawer: const MiDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildImagen('https://raw.githubusercontent.com/RoldanOrtega/UII-Act3-Drawer-Rutas/refs/heads/main/comedia.JPG'),
            const SizedBox(height: 20),
            const Text("Risas Aseguradas", style: TextStyle(color: Colors.white, fontSize: 22)),
          ],
        ),
      ),
    );
  }

  Widget _buildImagen(String url) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: const Color(0xFFFFC1E3), width: 3), borderRadius: BorderRadius.circular(20)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(17),
        child: Image.network(url, width: 200, height: 200, fit: BoxFit.cover),
      ),
    );
  }
}