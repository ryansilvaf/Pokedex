import 'package:pokedex/model/pokemons.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class apiPokemon {
  Future<List<Pokemons>> obterPokemon() async {
    var url = Uri.parse('http://104.131.18.84/pokemon/?limit=50&page=0');
    final resposta = await http.get(url);
    if (resposta.statusCode == 200) {
      Map json = JsonDecoder().convert(resposta.body);

      return json['data'].map<Pokemons>((value) {
        return Pokemons.fromJson(value);
      }).toList();
    }
    return [];
  }
}
