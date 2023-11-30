import 'package:flutter/material.dart';
import 'package:pokeverse/components/detail_mobile_page.dart';
import 'package:pokeverse/model/pokemon.dart';

class DetailScreen extends StatelessWidget {

  final Pokemon pokemon;

  const DetailScreen({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
          return DetailMobilePage(pokemon: pokemon);
      },
    );
  }
}