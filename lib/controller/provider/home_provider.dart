import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier{
  List Vehicles = [];
  List Fruits = [];
  List Vegetables = [];
  List Machinery = [];

  CallVehicles(data){
    Vehicles.add(data);
    notifyListeners();
  }

  CallFruits(data){
    Fruits.add(data);
    notifyListeners();
  }

  CallVegetables(data){
    Vegetables.add(data);
    notifyListeners();
  }

  CallMachinery(data){
    Machinery.add(data);
    notifyListeners();
  }
}