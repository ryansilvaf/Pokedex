import 'package:flutter/material.dart';
import 'package:pokedex/model/api/api/api_pokemon.dart';

import 'package:pokedex/model/pokemons.dart';

class Pokemonpresenter extends ChangeNotifier {
  final api = apiPokemon();
  List<Pokemons> pokemon1 = [];

  Future<void> obter() async {
    pokemon1 = await api.obterPokemon();
    notifyListeners();
  }
}
