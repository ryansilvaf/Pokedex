import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemons.dart';

import 'package:pokedex/view/detalhe/pokemondescription.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key, this.item}) : super(key: key);
  final Pokemons? item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item!.name!),
      ),
      body: Pokemonsdetalhes(
        item: item,
      ),
    );
  }
}
