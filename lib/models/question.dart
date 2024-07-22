class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({
    required this.id,
    required this.question,
    required this.answer,
    required this.options,
  });
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Flutter is an open_source UI sofware developmenr kit created by_____",
    "options": ["Apple", "Google", "Facebook", "Microsoft"],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "When google release Flutter?",
    "options": ["Jun 2017", "May 2017", "Jun 2018", "May 2018"],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "A memory location that holds a single letter or number?",
    "options": ["Double", "int", "Char", "word"],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "What command do you use to output data to the screen?",
    "options": ["Cin", "Count>>", "Cout", "Output>>"],
    "answer_index": 2,
  },

];
