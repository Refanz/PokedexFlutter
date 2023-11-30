import 'package:flutter/material.dart';
import 'package:pokeverse/components/type_box.dart';
import 'package:pokeverse/pages/detail_screen.dart';

import '../model/pokemon.dart';

class PokemonList extends StatelessWidget {
  final List<Pokemon> myPokemon;

  const PokemonList({Key? key, required this.myPokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final Pokemon pokemon = myPokemon[index];

          const textPokemon = TextStyle(
            fontSize: 20,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          );

          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(pokemon: pokemon);
              }));
            },
            child: Card(
              color: Colors.transparent,
              elevation: 5,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(pokemon.imgUrl, width: 100, height: 100),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            pokemon.name,
                            style: textPokemon,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: pokemon.type
                                  .map((type) => TypeBox(type: type))
                                  .toList()),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: myPokemon.length,
      ),
    );
  }
}
