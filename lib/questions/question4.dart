import 'package:flutter/material.dart';

class Question4 extends StatefulWidget {
  const Question4({super.key});
  @override
  State<Question4> createState() => _Question4State();
}

class _Question4State extends State<Question4> {
  bool _agreed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
            title: const Text('Question 4', style: TextStyle(color: Colors.white),),
            centerTitle: true,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
                activeColor: Colors.purple,
                value: _agreed,
                controlAffinity: ListTileControlAffinity.leading,
                title: const Text(
                  "I agree to the terms and conditions",
                  style: TextStyle(fontSize: 16),
                ),
                // *****************************
                // WILL NEED TO CHANGE THIS LINE
                onChanged: null),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
              // ****************************
              // WILL NEED TO CHANGE THIS LINE
              onPressed: null,
              child: const Text(
                'Sign Up',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ]),
    ));
  }
}
