import 'package:chess/game_board.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime timeBackPressed = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final differnece = DateTime.now().difference(timeBackPressed);
        final isExitWarning = differnece >= const Duration(seconds: 2);

        timeBackPressed = DateTime.now();

        if (isExitWarning) {
          Fluttertoast.showToast(
            msg: "Press back again to exit",
            fontSize: 18,
          );
          return false;
        } else {
          Navigator.of(context).popUntil((route) => route.isFirst);
          return true;
        }
      },
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 29, 29, 29),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 21),
              const Text(
                "Master the Board",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  letterSpacing: 3,
                ),
              ),
              const SizedBox(height: 51),
              SizedBox(
                //color: Colors.deepPurple,
                width: 278,
                height: 283,
                child: Image.asset(
                  'assets/images/chess-homepage.jpg',
                  height: 50,
                  width: 50,
                ),
              ),
              const SizedBox(height: 21),
              Text(
                "Welcome to the world of strategy and tactics!",
                style: TextStyle(
                  color: Colors.grey[300],
                ),
              ),
              Text(
                "Prepare to embark on a journey  where",
                style: TextStyle(
                  color: Colors.grey[300],
                ),
              ),
              Text(
                "every move counts. Remember, in chess",
                style: TextStyle(
                  color: Colors.grey[300],
                ),
              ),
              Text(
                "as in life, patience, foresight, and",
                style: TextStyle(
                  color: Colors.grey[300],
                ),
              ),
              Text(
                "determination lead to victory.",
                style: TextStyle(
                  color: Colors.grey[300],
                ),
              ),
              const SizedBox(height: 51),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const GameBoard())),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                    ),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: 278,
                  height: 51,
                  child: const Center(
                    child: Text(
                      "Start Game",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
