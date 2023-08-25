import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tetris/themes/Palette.dart';
import 'package:tetris/views/Controller/logic.dart';
import 'package:tetris/views/TetroMinoShapes/shapes.dart';
import 'package:tetris/views/homeScreen.dart';
import 'package:tetris/views/pixel.dart';

class GameBoard extends StatefulWidget {
  const GameBoard({Key? key}) : super(key: key);
  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  @override
  void initState() {
    super.initState();
    // start game when app start
    startGame();
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Are you sure?'),
            content: Text('Do you want to exit the game?'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('No'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                      (route) => false);
                },
                child: Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  void startGame() {
    currentPiece.intializePiece();
    Duration frameRate = const Duration(milliseconds: 400);
    gameLoop(frameRate);
  }

  void gameLoop(Duration frameRate) {
    Timer.periodic(frameRate, (timer) {
      setState(() {
        //clear lines
        clearLine();
        //check landing
        checkLadning();
        // check if game is over
        if (gameOver == true) {
          timer.cancel();
          showGameOverMessageDialog();
        }
        //move currentPieceDown
        currentPiece.movePiece(Direction.down);
      });
    });
  }

  void showGameOverMessageDialog() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    10.0), // Change the border radius as desired
              ),
              title: Text(
                'GAME OVER',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              content: Container(
                width: double.minPositive, // Adjust the width as desired
                child: Text(
                  '\nYour score is : $currentScore',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              actions: [
                // to reset the game
                TextButton(
                    onPressed: () {
                      resetGame();
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Play Again',
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                    ))
              ],
            ));
  }

  void resetGame() {
    gameBoard = List.generate(
        columnLength,
        (i) => List.generate(
              rowLength,
              (j) => null,
            ));
    // new game
    currentScore = 0;
    gameOver = false;

    createNewPiece();
    startGame();
  }

  // move piece
  void moveLeft() {
    //make sure the piece of valid before moving
    if (!checkCollision(Direction.left)) {
      setState(() {
        currentPiece.movePiece(Direction.left);
      });
    }
  }

  void moveRight() {
    //make sure the piece of valid before moving
    if (!checkCollision(Direction.right)) {
      setState(() {
        currentPiece.movePiece(Direction.right);
      });
    }
  }

  void rotatePiece() {
    setState(() {
      currentPiece.rotatePiece();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: WillPopScope(
        onWillPop: () async => _onWillPop(),
        child: SafeArea(
            child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                  itemCount: rowLength * columnLength,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: rowLength),
                  itemBuilder: (context, index) {
                    //get row and column for each piece
                    int row = (index / rowLength).floor();
                    int column = index % rowLength;

                    if (currentPiece.position.contains(index)) {
                      return Pixels(
                        color: currentPiece.color,
                      );
                    } else if (gameBoard[row][column] != null) {
                      TetrominoShapes? tetrominoShape = gameBoard[row][column];
                      return Pixels(
                        color: tetrominoColor[tetrominoShape],
                      );
                    }
                    //landed pieces
                    else {
                      return Pixels(
                        color: Colors.grey[900],
                      );
                    }
                  }),
            ),
            Row(
              children: [
                Text(
                  "Group Number : 3",
                  style: GoogleFonts.ibmPlexMono(color: Palette.white),
                ),
                const SizedBox(width: 10),
                Text(
                  "Mode : Normal Game",
                  style: GoogleFonts.ibmPlexMono(color: Palette.white),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Level : 1",
                  style: GoogleFonts.ibmPlexMono(color: Palette.white),
                ),
                const SizedBox(width: 20),
                Text(
                  "(Player Mode)",
                  style: GoogleFonts.ibmPlexMono(color: Palette.white),
                ),
              ],
            ),
            // GAME SCORE
            Row(
              children: [
                Text(
                  'Score : $currentScore',
                  style: GoogleFonts.ibmPlexMono(color: Colors.white),
                ),
                const SizedBox(width: 20),
                Text(
                  'Lines eliminate : $currentScore',
                  style: GoogleFonts.ibmPlexMono(color: Colors.white),
                ),
              ],
            ),
            // GAME CONTROL
            Padding(
              padding: const EdgeInsets.only(bottom: 40, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //left
                  IconButton(
                      onPressed: moveLeft,
                      icon: const Icon(
                        Icons.arrow_back_outlined,
                        color: Palette.primaryColor,
                      )),
                  //rotate
                  IconButton(
                      onPressed: rotatePiece,
                      icon: const Icon(
                        Icons.rotate_right_rounded,
                        color: Palette.primaryColor,
                      )),
                  //right
                  IconButton(
                      onPressed: moveRight,
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Palette.primaryColor,
                      )),
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
