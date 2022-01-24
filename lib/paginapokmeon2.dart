import 'package:flutter/material.dart';

import 'model/pokemons.dart';

class Itenspokemons extends StatelessWidget {
  final Pokemons? item;

  Itenspokemons({Key? key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed('/detalhe', arguments: item);
        },
        child: ListTile(
          contentPadding: const EdgeInsets.all(10),
          title: Text(item!.name!,style: TextStyle(fontSize: 22),),
          leading: Image.network(item!.thumbnailImage!,height: 200),
          trailing: Text('#${item!.number!}',style: TextStyle(fontSize: 16),
        ),
      ),
      ),
    );
  }
}
