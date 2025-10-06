import 'package:flutter/material.dart';
import 'package:mascota/modelos/marca.dart';

class MarcaProvider extends ChangeNotifier{
  List<Marca> _marcas = [];
  int _nextid = 1;

  List<Marca> get marcas=> _marcas;

  void agregarMarca(String nombre){
    _marcas.add(Marca(id:_nextid++, nombre :nombre));
    notifyListeners();
  }
  void eliminarMarca(Marca marca){
    _marcas.remove(marca);
    notifyListeners();
  }
  void actualizar(){
    notifyListeners();
  }

}