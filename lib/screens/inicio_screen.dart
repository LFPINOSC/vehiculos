import 'package:flutter/material.dart';
import 'package:mascota/screens/marca_screens.dart';
import 'package:mascota/screens/vehiculo_screen.dart';
class InicioScreen extends StatefulWidget {
  const InicioScreen({super.key});

  @override
  State<InicioScreen> createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Agenda de vehiculos"),),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.car_rental, color: Colors.black87,),
                  SizedBox(height: 18,),
                  Text(
                    'Agenda de vehiculos',
                    style: TextStyle(color: Colors.blue ,fontSize: 18),
                  )
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.car_rental),
              title: Text('Gestion de Marcas'),
              onTap: () async {
                Navigator.pop(context);
                await Navigator.push(
                  context, MaterialPageRoute(
                    builder: (_) => MarcaScreens()
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.car_rental),
              title: Text('Gestion de Vehiculos'),
              onTap: () async {
                Navigator.pop(context);
                await Navigator.push(
                  context, MaterialPageRoute(
                    builder: (_) => VehiculoScreen()
                  ),
                );
              },
            ), 
          ],
        ),
      ),
    );
  }
}