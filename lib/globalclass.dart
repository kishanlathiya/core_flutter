import 'dart:ui';

class Global {
  static int initialQuestion = 0;

  static int wonPrice = 500;

  static int randomColor = 0;
  static Color color = Color.fromRGBO(200, 164, randomColor, 1);

  static List<Map<String, String>> allQuestions = [
    //answers = A,B,C,D,C,C,B,A,D,C,D,A,A
    {
      'question':
      "1. Which of these brand names also means \"one-billionth part of something\"?",
      'choice 1': "[A]  Nano",
      'choice 2': "[B]  Vista",
      'choice 3': "[C]  Bolt",
      'choice 4': "[D]  Sumo",
      'response': "A",
    },
    {
      'question':
      "2. Fields medal is a prestigious international honour given in which subject?",
      'choice 1': "[A]  Life Sciences",
      'choice 2': "[B]  Mathematics",
      'choice 3': "[C]  History",
      'choice 4': "[D]  Astronomy",
      'response': "B",
    },
    {
      'question':
      "3. On the sacred day of Mauni Amavas the vow of not doing what is taken?",
      'choice 1': "[A]  Sleeping",
      'choice 2': "[B]  Walking",
      'choice 3': "[C]  Speaking",
      'choice 4': "[D]  Sitting",
      'response': "C",
    },
    {
      'question':
      "4. Which of these is a core ingredient of the south Indian dish Rasam?",
      'choice 1': "[A]  Rajma",
      'choice 2': "[B]  Brinjal",
      'choice 3': "[C]  Cucumber",
      'choice 4': "[D]  Tamarind",
      'response': "D",
    },
    {
      'question':
      "5. Which of these actors has not played the role of \"Devdas\" in a Hindi film?",
      'choice 1': "[A]  Dilip Kumar",
      'choice 2': "[B]  Shah Rukh Khan",
      'choice 3': "[C]  Dev Anand",
      'choice 4': "[D]  K L Saigal",
      'response': "C",
    },
    {
      'question':
      "6. Which unit of length derives its name from the Latin word for one twelfth part?",
      'choice 1': "[A]  Yard",
      'choice 2': "[B]  Feet",
      'choice 3': "[C]  Inch",
      'choice 4': "[D]  Metre",
      'response': "C",
    },
    {
      'question':
      "7. With reference to fashion and clothing what are loafers and sneakers types of?",
      'choice 1': "[A]  Belts",
      'choice 2': "[B]  Shoes",
      'choice 3': "[C]  T-shirts",
      'choice 4': "[D]  Sunglasses",
      'response': "B",
    },
    {
      'question':
      "8. What is the format of the world Kabaddi League broadcast on Sony Six?",
      'choice 1': "[A]  Circular",
      'choice 2': "[B]  Hexagonal",
      'choice 3': "[C]  Rectangular",
      'choice 4': "[D]  Triangular",
      'response': "A",
    },
    {
      'question':
      "9. Which of these phrases would be used for a person who comes in between two lovers?",
      'choice 1': "[A]  Daal me kala",
      'choice 2': "[B]  Chawal me kankar",
      'choice 3': "[C]  Doodh me pani",
      'choice 4': "[D]  Kabab me haddi",
      'response': "D",
    },
    {
      'question':
      "10. In which of these films was the name of the lead character same as its title?",
      'choice 1': "[A]  Parineeta (2005)",
      'choice 2': "[B]  Sharmilee(1971)",
      'choice 3': "[C]  Chandni(1989)",
      'choice 4': "[D]  Bandini(1963)",
      'response': "C",
    },
    {
      'question':
      "11. The first of which of these diseases in humans was reported in Hong Kong in 1997?",
      'choice 1': "[A]  Yellow fever",
      'choice 2': "[B]  Chikungunia",
      'choice 3': "[C]  Mad cow disease",
      'choice 4': "[D]  Bird flu",
      'response': "D",
    },
    {
      'question':
      "12. Who administered the oath to office to the first president Dr.Rajendra Prasad on 26th January 1950?",
      'choice 1': "[A]  Hiralal Kania",
      'choice 2': "[B]  C Rajagopalacharya",
      'choice 3': "[C]  Lord Mountbatten",
      'choice 4': "[D]  Sukumar Sen",
      'response': "A",
    },
    {
      'question': "13. Which of these phrases has a reference to war?",
      'choice 1': "[A]  Mahabharata Machana",
      'choice 2': "[B]  Purana Padhna",
      'choice 3': "[C]  Upanishad Uthana",
      'choice 4': "[D]  Ramayana Rachna",
      'response': "A",
    },
  ];
}
