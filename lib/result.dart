import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {Key? key, required this.result, required this.isMale, required this.age})
      : super(key: key);
  final double result;
  final bool isMale;
  final int age;

  String get resultPhrase {
    String resultText = '';
    if (result >= 30) {
      resultText = 'Obese';
    } else if (result > 25 && result < 30) {
      resultText = 'OverWeight';
    } else if (result >= 18.5 && result <= 24.9) {
      resultText = 'Normal';
    } else {
      resultText = 'Thin';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Result"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildText("Gender: ${isMale ? "Male" : 'Female'}", context),
              const SizedBox(
                height: 27,
              ),
              buildText("Result: ${result.toStringAsFixed(1)}", context),
              const SizedBox(
                height: 27,
              ),
              buildText('Age: $age', context),
              const SizedBox(
                height: 27,
              ),
              buildText("Healthiness: $resultPhrase", context),
            ],
          ),
        ),
      ),
    );
  }

  buildText(text, context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline3,
      textAlign: TextAlign.center,
    );
  }
}
