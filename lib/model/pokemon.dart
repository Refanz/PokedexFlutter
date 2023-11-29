class Pokemon {
  String name;
  List<String> type;
  String imgUrl;
  String category;
  String desc;

  Pokemon({
    required this.name,
    required this.type,
    required this.imgUrl,
    required this.category,
    required this.desc,
  });
}

var pokemonList = [
  Pokemon(
      name: 'Vileplum',
      type: ['Grass', 'Poison'],
      imgUrl:
          'https://sg.portal-pokemon.com/play/resources/pokedex/img/pm/a95af5f577260373074117cb756e5ea38cd674ef.png',
      category: 'Flower Pokemon',
      desc:
          'Vileplum memiliki kelopak bunga terbesar di dunia. Dengan setiap langkah, kelopak bunga mengeluarkan awan tebal serbuk sari beracun.'),
  Pokemon(
      name: 'Paras',
      type: ['Grass', 'Bug'],
      imgUrl:
          'https://sg.portal-pokemon.com/play/resources/pokedex/img/pm/837bcac8efc9329d9e3b9e46e95670a5d493b60a.png',
      category: 'Mushroom Pokemon',
      desc:
          'Entah karena kurangnya kelembapan atau kekurangan nutrisi, di Alola jamur di Paras tidak tumbuh dengan baik.'),
  Pokemon(
      name: 'Bellsprout',
      type: ['Grass', 'Poison'],
      imgUrl:
          'https://sg.portal-pokemon.com/play/resources/pokedex/img/pm/47ae88a63c66e32e957da303ad50b72268e097e4.png',
      category: 'Flower Pokemon',
      desc:
          'Tubuh Bellsprout yang tipis dan fleksibel memungkinkannya membungkuk dan berayun untuk menghindari serangan apa pun, betapapun kuatnya serangan itu. Dari mulutnya, Pokémon ini mengeluarkan cairan korosif yang bahkan melelehkan besi.'),
  Pokemon(
      name: 'Bellossom',
      type: ['Grass'],
      imgUrl:
          'https://sg.portal-pokemon.com/play/resources/pokedex/img/pm/9b1e56153094b9d1db297f7a60e90b7c3a82349f.png',
      category: 'Flower Pokemon',
      desc:
          'Banyak terdapat di daerah tropis. Saat menari, kelopaknya bergesekan dan mengeluarkan suara dering yang menyenangkan.'),
  Pokemon(
      name: 'Jumpluff',
      type: ['Grass', 'Flying'],
      imgUrl:
          'https://sg.portal-pokemon.com/play/resources/pokedex/img/pm/0b39f16b54ea23e7d81701cfefbca79bd9f935cb.png',
      category: 'Pokemon Rumput Kapas',
      desc:
          'Jumpluff bergerak mengikuti angin musiman. Begitu spora kapasnya habis, perjalanannya berakhir, begitu pula kehidupannya.'),
  Pokemon(
      name: 'Sunflora',
      type: ['Grass'],
      imgUrl:
          'https://sg.portal-pokemon.com/play/resources/pokedex/img/pm/a03119d2d01d0a0372e42635fe171fb85051ebd9.png',
      category: 'Pokemon Matahari',
      desc:
          'Pada siang hari, arusnya sangat sibuk, namun berhenti total saat matahari terbenam.'),
  Pokemon(
      name: 'Celebi',
      type: ['Grass', 'Psychic'],
      imgUrl:
          'https://sg.portal-pokemon.com/play/resources/pokedex/img/pm/af204c2381a4d78eae3f801521137bbf63ffd944.png',
      category: 'Pokemon Perjalanan Waktu',
      desc:
          'Pokémon ini datang dari masa depan dengan melintasi waktu. Diperkirakan selama Celebi muncul, masa depan cerah dan cemerlang menanti kita.'),
  Pokemon(
      name: 'Lilligant',
      type: ['Grass'],
      imgUrl:
          'https://sg.portal-pokemon.com/play/resources/pokedex/img/pm/6000b1d710f8a1d1967ceffb4ad19e3dee6fbf71.png',
      category: 'Pokemon Berbunga',
      desc:
          'Keharuman karangan bunga di kepala memiliki efek relaksasi, namun merawatnya sangat sulit.'),
  Pokemon(
      name: 'Gardevoir',
      type: ['Psychic', 'Fairy'],
      imgUrl:
          'https://sg.portal-pokemon.com/play/resources/pokedex/img/pm/bc3d0b23c6c391470d9f4f37e7f8882a55a74da8.png',
      category: 'Pokemon Pelukan',
      desc:
          'Untuk melindungi Pelatihnya, ia akan mengeluarkan seluruh kekuatan psikisnya untuk menciptakan lubang hitam kecil.'),
  Pokemon(
      name: 'Gourgeist',
      type: ['Grass', 'Ghost'],
      imgUrl:
          'https://sg.portal-pokemon.com/play/resources/pokedex/img/pm/72dd2d61b6ff474fb875f3429a1edfd6bb68e0ab.png',
      category: 'Pokemon Labu',
      desc:
          'Tangisan menakutkan keluar dari tubuhnya di tengah malam. Suara-suara tersebut konon merupakan ratapan makhluk halus yang sedang menderita di akhirat.')
];
