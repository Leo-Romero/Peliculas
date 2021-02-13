import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:peliculas/src/screens/models/pelicula_model.dart';

class PeliculasProvider {
  String _apikey = 'API KEY';
  String _url = 'api.themoviedb.org';
  String _languaje = 'es-ES';

  Future<List<Pelicula>> getEnCines() async {
    final url = Uri.https(_url, '3/movie/now_playing',
        {'api_key': _apikey, 'languaje': _languaje});

    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);

    final peliculas = new Peliculas.fromJsonList(decodedData['results']);

    return peliculas.items;
  }
}
