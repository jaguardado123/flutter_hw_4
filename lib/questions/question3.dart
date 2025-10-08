import 'package:flutter/material.dart';

class Question3 extends StatefulWidget {
  const Question3({super.key});
  @override
  State<Question3> createState() => _Question3State();
}

class _Question3State extends State<Question3> {
  TextEditingController newPasswordTextEditingController =
      TextEditingController();

  TextEditingController confirmNewPasswordTextEditingController =
      TextEditingController();

  bool match = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text('Question 3', style: TextStyle(color: Colors.white),),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Spacer(),
                const Text(
                  'Reset Password',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: newPasswordTextEditingController,
                    decoration: const InputDecoration(
                      hintText: 'New Password',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: confirmNewPasswordTextEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Confirm New Password',
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  match ? "" : "Passwords Don't Match",
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue),
                  onPressed: () {
                    setState(() {
                      // ADD YOUR CODE HERE
                    });
                  },
                  child: const Text('Done'),
                ),
                const Spacer(),
              ],
            ),
          )),
    );
  }
}
