import 'package:flutter/material.dart';
import '../services/car_http_service.dart';
import '../models/car_model.dart';
import '../screens/car_detail_screen.dart';
import '../screens/jokes_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coches API',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarsScreen(),
    );
  }
}

class CarsScreen extends StatefulWidget {
  @override
  _CarsScreenState createState() => _CarsScreenState();
}

class _CarsScreenState extends State<CarsScreen> {
  late Future<List<CarsModel>> futureCars;

  @override
  void initState() {
    super.initState();
    futureCars = CarHttpService().getCars();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Coches'),
        actions: [
          IconButton(
            icon: Icon(Icons.mood),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => JokesScreen()),
              );
            },
          ),
        ],
      ),
      body: FutureBuilder<List<CarsModel>>(
        future: futureCars,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No hay coches disponibles'));
          } else {
            final cars = snapshot.data!;
            return ListView.builder(
              itemCount: cars.length,
              itemBuilder: (context, index) {
                final car = cars[index];
                return ListTile(
                  title: Text('${car.make} ${car.model}'),
                  subtitle: Text('Año: ${car.year}, Tipo: ${car.type}'),
                  leading: Icon(Icons.directions_car),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CarDetailScreen(car: car),
                      ),
                    );
                  },
                );
              },
            );
          }
        },
      ),
    );
  }
}
