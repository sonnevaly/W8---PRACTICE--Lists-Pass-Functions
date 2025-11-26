class Joke {
  final String title;
  final String description;

  Joke({required this.title, required this.description});
}

final List<Joke> jokesList = List.generate(
  20,
  (index) => Joke(
    title: "Joke #${index + 1}",
    description: "This is the description of joke #${index + 1}.",
  ),
);