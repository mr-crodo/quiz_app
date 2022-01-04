import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({
  required this.title, 
  required this.answers,
});
}




class QuestionData {
  final _data = [
    Question(
      title: 'Кем хочешь стать',
      answers: [
        {'answer' : 'Ведущим "Орла и Решки". Хочу повидеть мир! ',},
        {'answer' : 'Врачом! Спасать людей мое призвание',},
        {'answer' : 'Пародистом, чтоб куражиться над всеми!', 'isCorrect': 1},
        {'answer' : 'Мастером на все руки',},
      ]
    ),

    Question(
      title: 'Продолжим фразу: "Сегодня я...',
      answers: [
        {'answer' : '...люблю всех и вся. Пойду на подвиги!"',},
        {'answer' : '...уже встал и то хорошо"',},
        {'answer' : '...пакую вещи и лечу на шабаш"', 'isCorrect': 1},
        {'answer' : '...соберу большой рюкзак и в поход"',},
      ]
    )
  ];

  List<Question> get questions => [..._data];
}