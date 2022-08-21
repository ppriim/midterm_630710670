import 'package:flutter/material.dart';
import '../temp.dart';

class TempPage extends StatefulWidget {
  @override
  State<TempPage> createState() => _TempPageState();
}

class _TempPageState extends State<TempPage> {
  final _controller = TextEditingController();
  final _temp = temp();
  var check = 0;

  // state variable
  var _feedbackText = '';

  void handleClickGuess() {
    print('Button clicked!');
    print(_controller.text);
    var guess = double.tryParse(_controller.text);
    if (guess == null) {
      // แจ้ง error
      print('Input error');
      setState(() {
        _feedbackText = 'Input ERROR!';
      });
    } else if(check == 1){
      var result = _temp.doGuess(guess, check);
      print(result);
      setState(() {
        _feedbackText = 'Celsius to Fahrenheit $result';
      });
    }else if(check == 2){
      var result = _temp.doGuess(guess, check);
      print(result);
      setState(() {
        _feedbackText = 'Celsius to Kelvin $result';
      });
    }else if(check == 3){
      var result = _temp.doGuess(guess, check);
      print(result);
      setState(() {
        _feedbackText = 'Fahrenheit to Celsius $result';
      });
    }else if(check == 4){
      var result = _temp.doGuess(guess, check);
      print(result);
      setState(() {
        _feedbackText = 'Fahrenheit to Kelvin $result';
      });
    }else if(check == 5){
      var result = _temp.doGuess(guess, check);
      print(result);
      setState(() {
        _feedbackText = 'Fahrenheit to Kelvin $result';
      });
    }else if(check == 6){
      var result = _temp.doGuess(guess, check);
      print(result);
      setState(() {
        _feedbackText = 'Kelvin to Fahrenheit $result';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Midterm Exam'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white, //สีพื้นหลังของ Container
          border: Border.all(
            width: 5.0,
            color: Colors.deepPurple.shade200,
          ),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Temperature Converter'),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a number',
              ),
            ),
            ElevatedButton(
              onPressed: handleClickGuess,
              child: const Text('Celsius to Fahrenheit'),
              autofocus: check == 1,
            ),
            ElevatedButton(
              onPressed: handleClickGuess,
              child: const Text('Celsius to Kelvin'),
              autofocus: check == 2,
            ),
            ElevatedButton(
              onPressed: handleClickGuess,
              child: const Text('Fahrenheit to Celsius'),
              autofocus: check == 3,
            ),
            ElevatedButton(
              onPressed: handleClickGuess,
              child: const Text('Fahrenheit to Kelvin'),
              autofocus: check == 4,
            ),
            ElevatedButton(
              onPressed: handleClickGuess,
              child: const Text('Kelvin to Celsius'),
              autofocus: check == 5,
            ),
            ElevatedButton(
              onPressed: handleClickGuess,
              child: const Text('Kelvin to Fahrenheit'),
              autofocus: check == 6,
            ),
            Text(_feedbackText),
          ],
        ),
      ),
    );
  }
}
/*
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Temperature Converter'),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a number',
              ),
            ),
            // Callback function
            ElevatedButton(
              onPressed: handleClickGuess,
              child: const Text('Celsius to Fahrenheit'),
              autofocus: check == 1,
            ),
            ElevatedButton(
              onPressed: handleClickGuess,
              child: const Text('Celsius to Kelvin'),
              autofocus: check == 2,
            ),
            ElevatedButton(
              onPressed: handleClickGuess,
              child: const Text('Fahrenheit to Celsius'),
              autofocus: check == 3,
            ),
            ElevatedButton(
              onPressed: handleClickGuess,
              child: const Text('Fahrenheit to Kelvin'),
              autofocus: check == 4,
            ),
            ElevatedButton(
              onPressed: handleClickGuess,
              child: const Text('Kelvin to Celsius'),
              autofocus: check == 5,
            ),
            ElevatedButton(
              onPressed: handleClickGuess,
              child: const Text('Kelvin to Fahrenheit'),
              autofocus: check == 6,
            ),
            Text(_feedbackText),
          ],
        ),
 */
