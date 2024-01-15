import 'package:quiz_app/models/quiz_question.dart';

// here questions file is nothing but a variable

const questions = [
  QuizQuestion(
    'What are the main building blocks of flutter?',
    ['Widgets', 'Components', 'Blocks', 'Functions'],
  ),
  QuizQuestion(
    'How are flutter UIs built?',
    [
      'By combining widgets in code',
      'By combining widgets in visual editer',
      'By defining widgets in config files',
      'By using xcode for ios and Android Studio for Android'
    ],
  ),
  QuizQuestion(
    'What is the purpose of StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render Ui that does not depend on data'
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above'
    ],
  ),
  QuizQuestion(
    'What happens when u change data in StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated'
    ],
  ),
  QuizQuestion(
    'How should you update data inside StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()'
    ],
  ),
];
