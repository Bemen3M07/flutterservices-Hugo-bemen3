import 'package:flutter/material.dart';
import '../models/car_model.dart';

class CarDetailScreen extends StatelessWidget {
  final CarsModel car;

  CarDetailScreen({required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${car.make} ${car.model}")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Marca: ${car.make}", style: TextStyle(fontSize: 20)),
            Text("Modelo: ${car.model}", style: TextStyle(fontSize: 20)),
            Text("Año: ${car.year}", style: TextStyle(fontSize: 20)),
            Text("Tipo: ${car.type}", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
