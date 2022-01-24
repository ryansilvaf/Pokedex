import 'package:flutter/material.dart';
import 'package:pokedex/paginapokmeon2.dart';
import 'package:pokedex/view/detalhe/pokemondescription.dart';
import 'package:pokedex/model/pokemons.dart';
import 'package:provider/provider.dart';

import 'presenter/pokemon_presenter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) => Pokemonpresenter(),
    child: MaterialApp(
    title: 'pokedex',
    theme: ThemeData(primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => pokedex(),
        '/detalhe': (context) => Pokemonsdetalhes(
              item: ModalRoute.of(context)?.settings.arguments as Pokemons,
            ),
      },
    ),
    );
  }
}

class pokedex extends StatefulWidget {
  const pokedex({Key? key}) : super(key: key);

  @override
  _pokedexState createState() => _pokedexState();
}

class _pokedexState extends State<pokedex> {
  late Pokemonpresenter presenter;
  @override
  void didChangeDependencies() {
    context.read<Pokemonpresenter>().obter();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
        appBar: AppBar(
          title: const Text('Pokedex'),
        ),
        body: SafeArea(
          child: Consumer<Pokemonpresenter>(
              builder: (context, value, child) {
                if (value.pokemon1.isEmpty)
                  return  Center(
                      child: CircularProgressIndicator());

                return ListView.builder(
                  padding: const EdgeInsets.all(20),
                  itemCount: value.pokemon1.length,
                  itemBuilder: (context, index) {
                    return Itenspokemons(
                      item: value.pokemon1[index],
                    );
                  },
                );
              },
          ),
        ),
    );
  }
}
