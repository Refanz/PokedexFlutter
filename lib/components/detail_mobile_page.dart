import 'package:flutter/material.dart';
import 'package:pokeverse/components/favorite_button.dart';
import 'package:pokeverse/components/type_box.dart';
import 'package:pokeverse/model/pokemon.dart';

class DetailMobilePage extends StatelessWidget {
  final Pokemon pokemon;

  const DetailMobilePage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const textPokemon = TextStyle(
      fontSize: 25,
      fontFamily: 'Pokemon',
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );

    return Scaffold(
      backgroundColor: Colors.white24,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  decoration:  const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [
                        0.1,
                        0.4,
                        0.6
                      ],
                      colors: [
                        Colors.cyanAccent,
                        Colors.lightBlueAccent,
                        Colors.blue
                      ]
                    )
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white24,
                          blurRadius: 15.0,
                          offset: Offset(10.0, 10.0),
                        )
                      ]
                    ),
                    child: Image.asset(pokemon.imgUrl, scale: 3),
                  )
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white38,
                          child: IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                         FavoriteButton(pokemon: pokemon),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                pokemon.name,
                textAlign: TextAlign.center,
                style: textPokemon,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                pokemon.category,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: pokemon.type.map((type) {
                  return TypeBox(type: type);
                }).toList(),
              )
            ),
            Container(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                pokemon.desc,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Roboto'
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}