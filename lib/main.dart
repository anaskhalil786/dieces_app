import 'package:flutter/material.dart';

void main() {
  runApp(DiceApp());
}

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green.shade700,
        appBar: AppBar(
          backgroundColor: Colors.red.shade700,
          title: Text('Dicee'),
        ),
        body: DiceeApp(),
      ),
    );
  }
}

class DiceeApp extends StatefulWidget {
  @override
  _DiceeAppState createState() => _DiceeAppState();
}

class _DiceeAppState extends State<DiceeApp> {
  int diceNumber = 1;

  void rollDice() {
    setState(() {
      diceNumber = _generateRandomDiceNumber();
    });
  }

  int _generateRandomDiceNumber() {
    return 1 + DateTime.now().millisecondsSinceEpoch % 6;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: Image.network(
                'image/png;base64,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',
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
                  return Text('Diece');
                },
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: rollDice,
          child: Text('Roll Dice'),
        ),
      ],
    );
  }
}
