class Author {
  static getAuthor() => Author(
        name: 'Oladejo Temitayo',
        bio: 'A Nigerian',
        email: 'oladejotemitayo123@gmail.com',
      );
  String name;
  String bio;
  String email;
  Author({
    required this.name,
    required this.bio,
    required this.email,
  });
}
