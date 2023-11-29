import 'package:flutter/material.dart';
import 'package:pokeverse/components/pokemon_list.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokeverse', style: TextStyle(color: Colors.white, fontFamily: 'Pokemon')),
        backgroundColor: Colors.white38,
      ),
      body: const PokemonList(),
      backgroundColor: Colors.lightBlue[200],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white38,
        onPressed: () {},
        child: const Icon(Icons.catching_pokemon, color: Colors.white,),
      ),
    );
  }
}
