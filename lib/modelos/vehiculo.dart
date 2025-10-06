import 'package:mascota/modelos/marca.dart';

class Vehiculo{
  String placa;
  Marca marca;
  String color;
  String anio;
  String modelo;
  Vehiculo({
    required this.placa,
    required this.marca,
    required this.anio,
    required this.color,
    required this.modelo
  });
}