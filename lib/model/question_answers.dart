const questions = [
  QuestionAnswers("Quale è il capoluogo di Valle d'Aosta?",
      ["Aosta", "Milano", "Torino", "Napoli"]),
  QuestionAnswers("Qual è il capoluogo della regione Emilia-Romagna?",
      ["Bologna", "Rimini", "Riccione", "Ancona"]),
  QuestionAnswers("Qual è il capoluogo della regione Liguria?",
      ["Genova", "Torino", "Trento", "Trieste"]),
  QuestionAnswers("Qual è il capoluogo della regione Sicilia?",
      ["Palermo", "Napoli", "Bari", "Lecce"]),
  QuestionAnswers("Qual è il capoluogo della regione Toscana?",
      ["Firenze", "Perugia", "Trento", "Trieste"]),
  QuestionAnswers("Qual è il capoluogo della regione Lazio?",
      ["Roma", "Perugia", "Napoli", "Trieste"]),
  QuestionAnswers("Qual è il capoluogo della regione Calabria?",
      ["Catanzaro", "Palermo", "Napoli", "Lecce"]),
  QuestionAnswers("Qual è il capoluogo della regione Basilicata?",
      ["Potenza", "Palermo", "Napoli", "Campobasso"]),
  QuestionAnswers("Qual è il capoluogo della regione Molise?",
      ["Campobasso", "Palermo", "Potenza", "Milano"]),
  QuestionAnswers("Qual è il capoluogo della regione Umbria?",
      ["Perugia", "L'Aquila", "Potenza", "Campobasso"])
];

class QuestionAnswers {
  const QuestionAnswers(this.question, this.answers);
  final String question;
  final List<String> answers;

  List<String> getShuffleAnswers() {
    final List<String> shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
