import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  const InputsPage({super.key});

  @override
  State<InputsPage> createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  bool switchValue = false;
  double _sliderValue = 5;
  int? _languageGroupValue = 0;
  String? diaDaSemana;
  String? _listaSuspensaFilmes;
  static Set<String> _status = {'pendente', 'andamento', 'finalizado'};
  Set<String> _statusSelected = {_status.first};
  List<String> _meses = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro',
  ];

  List<String> _mesesSelecionados = [];

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Quais botões utlizar?',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            SizedBox(width: double.maxFinite),
            FilledButton(onPressed: () {}, child: Text('FiledButton')),
            FilledButton.tonal(onPressed: () {}, child: Text('FiledButton')),
            ElevatedButton(onPressed: () {}, child: Text('ElevatedButton')),
            TextButton(onPressed: () {}, child: Text('TextButton')),
            OutlinedButton(onPressed: () {}, child: Text('OutlinedButton')),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Botões com ícones?',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            FilledButton.icon(
              onPressed: () {},
              label: Text('FiledButton'),
              icon: Icon(Icons.favorite),
            ),
            FilledButton.tonalIcon(
              onPressed: () {},
              label: Text('FiledButton'),
              icon: Icon(Icons.favorite),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              label: Text('ElevatedButton'),
              icon: Icon(Icons.favorite),
            ),
            TextButton.icon(
              onPressed: () {},
              label: Text('TextButton'),
              icon: Icon(Icons.favorite),
            ),
            OutlinedButton.icon(
              iconAlignment: IconAlignment.end,
              onPressed: () {},
              label: Text('OutlinedButton'),
              icon: Icon(Icons.favorite),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Apenas ícones?',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Wrap(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                IconButton.filled(onPressed: () {}, icon: Icon(Icons.favorite)),
                IconButton.outlined(
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                ),
                IconButton.filledTonal(
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text('Quais widgets de selação única devo utilizar?',
                  style: Theme.of(context).textTheme.headlineMedium),
            ),
            Switch(
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
            Slider(
              label: '${_sliderValue}',
              min: 1,
              max: 10,
              divisions: 10,
              value: _sliderValue,
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text('Radio Buttons'),
            ),
            Column(
              children: [
                RadioListTile(
                  title: Text('Java'),
                  value: 1,
                  groupValue: _languageGroupValue,
                  onChanged: (index) {
                    setState(() {
                      _languageGroupValue = index;
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Python'),
                  value: 2,
                  groupValue: _languageGroupValue,
                  onChanged: (index) {
                    setState(() {
                      _languageGroupValue = index;
                    });
                  },
                ),
                RadioListTile(
                  title: Text('Dart'),
                  value: 3,
                  groupValue: _languageGroupValue,
                  onChanged: (index) {
                    setState(() {
                      _languageGroupValue = index;
                    });
                  },
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text('Choice Chip'),
            ),
            Wrap(
              spacing: 4,
              runSpacing: 4,
              children: [
                'Domingo',
                'Segunda-Feira',
                'Terça-Feira',
                'Quarta-Feira',
                'Quinta-Feira',
                'Sexta-Feira',
                'Sábado',
              ]
                  .map(
                    (dia) => ChoiceChip(
                      label: Text(dia),
                      selected: diaDaSemana == dia,
                      onSelected: (selected) {
                        setState(() {
                          diaDaSemana = selected ? dia : null;
                        });
                      },
                    ),
                  )
                  .toList(),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text('Lista Suspensa'),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: DropdownButton(
                value: _listaSuspensaFilmes,
                items: [
                  'Star Wars - A Vingança dos Sith',
                  'Indiana Jones e o Templo da Perdição',
                  'De Volta para o Futuro',
                  'Matrix',
                  'Vingadores Guerra Infinita',
                  'Blade Runner'
                ]
                    .map(
                      (filme) => DropdownMenuItem(
                        value: filme,
                        child: Text(filme),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _listaSuspensaFilmes = value;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text('Segmented Button'),
            ),
            SegmentedButton(
              segments: [
                ButtonSegment(
                  value: _status.elementAt(0),
                  label: Text('Pendente'),
                ),
                ButtonSegment(
                  value: _status.elementAt(1),
                  label: Text('Andamento'),
                ),
                ButtonSegment(
                  value: _status.elementAt(2),
                  label: Text('Finalizado'),
                ),
              ],
              selected: _statusSelected,
              onSelectionChanged: (status) {
                setState(() {
                  _statusSelected = status;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text('Quais widgets de selação múltipla devo utilizar?',
                  style: Theme.of(context).textTheme.headlineMedium),
            ),
            Wrap(
              // runSpacing: 4,
              spacing: 4,
              children: _meses
                  .map(
                    (mes) => FilterChip(
                      label: Text(mes),
                      selected: _mesesSelecionados.contains(mes),
                      onSelected: (selected) {
                        setState(() {
                          if (selected) {
                            _mesesSelecionados.add(mes);
                          } else {
                            _mesesSelecionados.remove(mes);
                          }
                        });
                      },
                    ),
                  )
                  .toList(),
            ),
            TextField(
              controller: _controller,
              onChanged: (text) {
                print('onChanged: $text');
              },
              onSubmitted: (text) {
                print('onSubmitted: $text');
              },
              onEditingComplete: () {
                print('onEditingComplete.');
              },
            ),
            FilledButton(
              onPressed: () {
                print('text: ${_controller.text}');
              },
              child: Text('SALVAR'),
            ),
          ],
        ),
      ),
    );
  }
}
