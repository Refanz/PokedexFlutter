import 'package:flutter/material.dart';
import 'package:pokeverse/components/pokemon_grid.dart';
import 'package:pokeverse/components/pokemon_list.dart';
import 'package:pokeverse/model/pokemon.dart';
import 'package:pokeverse/pages/favorite_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Pokeverse',
                style: TextStyle(color: Colors.white, fontFamily: 'Pokemon')),
            backgroundColor: Colors.white38,
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 750) {
                return PokemonList(myPokemon: pokemonList);
              } else if (constraints.maxWidth <= 1200) {
                return PokemonGrid(myPokemon: pokemonList, gridCount: 4);
              } else {
                return PokemonGrid(myPokemon: pokemonList, gridCount: 6);
              }
            },
          ),
          backgroundColor: Colors.lightBlue[200],
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FavoriteScreen();
              }));
            },
            child: const Icon(
              Icons.catching_pokemon,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
