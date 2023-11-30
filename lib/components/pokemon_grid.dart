import 'package:flutter/material.dart';
import 'package:pokeverse/components/type_box.dart';
import 'package:pokeverse/model/pokemon.dart';
import 'package:pokeverse/pages/detail_screen.dart';

class PokemonGrid extends StatelessWidget {
  final int gridCount;
  final List<Pokemon> myPokemon;

  const PokemonGrid({Key? key, required this.myPokemon, required this.gridCount}) : super (key: key);

  @override
  Widget build(BuildContext context) {

    const textPokemon = TextStyle(
      fontSize: 16,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );

    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        children: myPokemon.map((pokemon) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(pokemon: pokemon);
              }));
            },
            child: Card(
              color: Colors.transparent,
              elevation: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 5),
                  Expanded(
                    child: Image.asset(pokemon.imgUrl, fit: BoxFit.contain),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      pokemon.name,
                      style: textPokemon,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: pokemon.type.map((type) {
                        return TypeBox(type: type);
                      }).toList(),
                    )
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}