import 'package:flutter/material.dart';
import 'package:pokedex/model/pokemons.dart';

class Pokemonsdetalhes extends StatelessWidget {
  final Pokemons? item;
  const Pokemonsdetalhes({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(
    title: Text(item!.name!),
    ),

    body: Card(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                  width: 400,
                  height: 200,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: const Color(0xffe5e0e0),
                    child: Image.network(
                      item!.thumbnailImage!,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(35),
                  child: Container(
                    alignment: Alignment.topRight,
                    child: Text('#' + item!.number!,style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                child: Text(item!.description!,style: TextStyle(fontSize: 18),),
              ),
            ),
            const Divider(
              indent: 10,
              endIndent: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: const Text(
                  'Tipo:',
                  style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                child: Text(item!.type!.join(''),style: TextStyle(fontSize: 18),),
              ),
            ),
            const Divider(
              indent: 10,
              endIndent: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                child: const Text(
                  'Fraquezas:',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),

                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 5, 0, 15),
                child: Text(
                  item!.weakness!.join('  '),style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
