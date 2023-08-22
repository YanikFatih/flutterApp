import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:idenfit_my_first_app/model/pokemon_model.dart';

class PokemonService {
  final String apiUrl = 'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  Future<PokemonModel> fetchPokemons() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      var jsonBody =  PokemonModel.fromJson(json.decode(response.body));
      return jsonBody;
    } else {
      throw Exception('Failed to load');
    }
  }
}