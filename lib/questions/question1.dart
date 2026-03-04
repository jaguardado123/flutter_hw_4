import 'package:flutter/material.dart';

class Question1 extends StatefulWidget {
  const Question1({super.key});
  @override
  State<Question1> createState() => _Question1State();
}

class _Question1State extends State<Question1> {
  // *********************
  // CREATE VARIABLES HERE
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text('Question 1', style: TextStyle(color: Colors.white),),
            centerTitle: true,
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Press button to make me green',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,

                        // *****************************
                        // WILL NEED TO MODIFY THIS LINE
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green),
                        onPressed: () {
                          // *****************
                          // ADD YOUR CODE HERE

                        },
                        child: const Text('Make Green'),
                      ),
                    )
                  ]),
            ),
          )),
    );
  }
}
