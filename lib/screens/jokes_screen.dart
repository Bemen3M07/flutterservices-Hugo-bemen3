import 'package:flutter/material.dart';
import '../services/jokes_service.dart';

class JokesScreen extends StatefulWidget {
  @override
  _JokesScreenState createState() => _JokesScreenState();
}

class _JokesScreenState extends State<JokesScreen> {
  String joke = "Pulsa el botón para ver un chiste";

  void loadJoke() async {
    String newJoke = await JokesService().fetchJoke();
    setState(() {
      joke = newJoke;
    });
  }

  @override
  void initState() {
    super.initState();
    loadJoke(); // Cargar un chiste al abrir la pantalla
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chistes")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                joke,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: loadJoke,
                child: Text("Mostrar otro chiste"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
