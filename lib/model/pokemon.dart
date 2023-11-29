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
          'images/vileplum.png',
      category: 'Flower Pokemon',
      desc:
          'Vileplum memiliki kelopak bunga terbesar di dunia. Dengan setiap langkah, kelopak bunga mengeluarkan awan tebal serbuk sari beracun.'),
  Pokemon(
      name: 'Paras',
      type: ['Grass', 'Bug'],
      imgUrl:
          'images/paras.png',
      category: 'Mushroom Pokemon',
      desc:
          'Entah karena kurangnya kelembapan atau kekurangan nutrisi, di Alola jamur di Paras tidak tumbuh dengan baik.'),
  Pokemon(
      name: 'Bellsprout',
      type: ['Grass', 'Poison'],
      imgUrl:
          'images/bellsprout.png',
      category: 'Flower Pokemon',
      desc:
          'Tubuh Bellsprout yang tipis dan fleksibel memungkinkannya membungkuk dan berayun untuk menghindari serangan apa pun, betapapun kuatnya serangan itu. Dari mulutnya, Pokémon ini mengeluarkan cairan korosif yang bahkan melelehkan besi.'),
  Pokemon(
      name: 'Bellossom',
      type: ['Grass'],
      imgUrl:
          'images/bellossom.png',
      category: 'Flower Pokemon',
      desc:
          'Banyak terdapat di daerah tropis. Saat menari, kelopaknya bergesekan dan mengeluarkan suara dering yang menyenangkan.'),
  Pokemon(
      name: 'Jumpluff',
      type: ['Grass', 'Flying'],
      imgUrl:
          'images/jumpluff.png',
      category: 'Pokemon Rumput Kapas',
      desc:
          'Jumpluff bergerak mengikuti angin musiman. Begitu spora kapasnya habis, perjalanannya berakhir, begitu pula kehidupannya.'),
  Pokemon(
      name: 'Sunflora',
      type: ['Grass'],
      imgUrl:
          'images/sunflora.png',
      category: 'Pokemon Matahari',
      desc:
          'Pada siang hari, arusnya sangat sibuk, namun berhenti total saat matahari terbenam.'),
  Pokemon(
      name: 'Celebi',
      type: ['Grass', 'Psychic'],
      imgUrl:
          'images/celebi.png',
      category: 'Pokemon Perjalanan Waktu',
      desc:
          'Pokémon ini datang dari masa depan dengan melintasi waktu. Diperkirakan selama Celebi muncul, masa depan cerah dan cemerlang menanti kita.'),
  Pokemon(
      name: 'Lilligant',
      type: ['Grass'],
      imgUrl:
          'images/lilligant.png',
      category: 'Pokemon Berbunga',
      desc:
          'Keharuman karangan bunga di kepala memiliki efek relaksasi, namun merawatnya sangat sulit.'),
  Pokemon(
      name: 'Gardevoir',
      type: ['Psychic', 'Fairy'],
      imgUrl:
          'images/gardevoir.png',
      category: 'Pokemon Pelukan',
      desc:
          'Untuk melindungi Pelatihnya, ia akan mengeluarkan seluruh kekuatan psikisnya untuk menciptakan lubang hitam kecil.'),
  Pokemon(
      name: 'Gourgeist',
      type: ['Grass', 'Ghost'],
      imgUrl:
          'images/gourgeist.png',
      category: 'Pokemon Labu',
      desc:
          'Tangisan menakutkan keluar dari tubuhnya di tengah malam. Suara-suara tersebut konon merupakan ratapan makhluk halus yang sedang menderita di akhirat.')
];
