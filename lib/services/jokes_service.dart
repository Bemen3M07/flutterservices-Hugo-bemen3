import 'dart:convert';
import 'package:http/http.dart' as http;

class JokesService {
  final String apiUrl = "https://api.sampleapis.com/jokes/goodJokes";

  Future<String> fetchJoke() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> jokes = json.decode(response.body);
      if (jokes.isNotEmpty) {
        final randomJoke = (jokes..shuffle()).first; // Selecciona un chiste aleatorio
        return "${randomJoke["setup"]} ${randomJoke["punchline"]}";
      } else {
        return "No hay chistes disponibles.";
      }
    } else {
      throw Exception("Error al obtener chiste");
    }
  }
}
