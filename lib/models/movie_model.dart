class MovieModel {
  final String? name;
  final String? director;
  final double? rating;
  final String? image;
  final List<String>? genres;
  final String? storyLine;

  MovieModel({
    this.name,
    this.director,
    this.rating,
    this.image,
    this.genres,
    this.storyLine,
  });
}

List<MovieModel> topMovieList = [
  MovieModel(
    name: 'Venom: Let There Be Carnage',
    image:'https://i.pinimg.com/564x/19/ff/0a/19ff0a49907d3fe9a2385ec67e201164.jpg',
    director: 'Andy Serkis',
    genres: ['Action','Thriller'],
    rating: 4.8,
    storyLine: "Tom Hardy returns to the big screen as the lethal protector Venom, one of MARVEL's greatest and most complex characters. Directed by Andy Serkis, the film also stars Michelle Williams, Naomie Harris and Woody Harrelson, in the role of the villain Cletus Kasady/Carnage.",
  ),
  MovieModel(
    name: 'Stranger Things',
    image: 'https://i.pinimg.com/564x/28/b8/d6/28b8d6759594cc8e8d2912a0b2ec863a.jpg',
    director: 'Matt Duffer',
    genres: ['Drama', 'Fantasy', 'Horor'],
    storyLine: 'When a young boy disappears, his mother, a police chief and his friends must confront terrifying supernatural forces in order to get him back.',
    rating: 4.7,
  ),
  MovieModel(
    name: 'The Suicide Squad',
    director: 'James Gunn',
    rating: 4.7,
    genres: ['Action','Advanture','Comedy'],
    image: 'https://i.pinimg.com/564x/29/d4/cd/29d4cd3595d3ba5ee402b00150eaa683.jpg',
    storyLine: "Supervillains Harley Quinn, Bloodsport, Peacemaker and a collection of nutty cons at Belle Reve prison join the super-secret, super-shady Task Force X as they are dropped off at the remote, enemy-infused island of Corto Maltese.",
  ),
  MovieModel(
    name: 'Black Widow',
    director: 'Cate Shortland',
    rating: 4.7,
    genres: ['Action','Advanture','Sci-Fi'],
    image: 'https://i.pinimg.com/564x/6d/34/c5/6d34c5fab92849061a8e35840878b742.jpg',
    storyLine: "Natasha Romanoff confronts the darker parts of her ledger when a dangerous conspiracy with ties to her past arises.",
  ),
];
