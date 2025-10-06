import 'package:flutter/material.dart';
import 'package:mascota/modelos/marca.dart';
import 'package:mascota/modelos/vehiculo.dart';

class VeviculoProvider extends ChangeNotifier{
  List<Vehiculo> _vehiculos = [];
  
  List<Vehiculo> get vehiculo => _vehiculos;

  void agregarVehiculo(String placa, Marca marca, String 
  color, String anio, String modelo){
    _vehiculos.add(Vehiculo(placa: placa, 
    marca: marca, anio: anio, color: color, modelo: modelo));
    notifyListeners();
  }
  void eliminarVehiculo(Vehiculo vehiculo){
    _vehiculos.remove(vehiculo);
  }
  void actualizar(){
    notifyListeners();
  }
}