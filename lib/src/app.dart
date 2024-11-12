import 'package:apps_playground/src/core/constants.dart';
import 'package:apps_playground/src/features/ecoponto/presentation/ajude_o_planeta_page.dart';
import 'package:apps_playground/src/features/ecoponto/presentation/saldo_page.dart';
import 'package:apps_playground/src/features/impopar/presentation/impopar.dart';
import 'package:apps_playground/src/features/insanelybutton/presentation/insanely_button_page.dart';
import 'package:flutter/material.dart';

import 'features/home/presentation/home_page.dart';
import 'features/inputs/presentation/inputs_page.dart';
import 'features/sounds/presentation/sounds_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  static final url =
      'https://images.pexels.com/photos/8542564/pexels-photo-8542564.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => SaldoPage(
            // titulo: 'Ajude o Planeta',
            // conteudo: kMussumIpsum,
            // urlImagem: url,
            ),
        '/sounds': (_) => const SoundsPage(),
        '/insanebutton': (_) => const InsanelyButtonPage(),
        '/impopar': (_) => const ImpoParPage(),
        '/inputs': (_) => const InputsPage(),
      },
    );
  }
}
