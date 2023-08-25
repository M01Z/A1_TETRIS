import 'package:flutter/material.dart';

int rowLength = 10;
int columnLength = 15;

enum Direction { left, right, down }

enum TetrominoShapes { L, J, I, O, S, Z, T }

Map<TetrominoShapes, Color> tetrominoColor = {
  TetrominoShapes.L: const Color(0xff045AFA),
  TetrominoShapes.J: const Color(0xffffc000),
  TetrominoShapes.I: const Color(0xff00ffff),
  TetrominoShapes.O: const Color(0xFFFFff00),
  TetrominoShapes.S: const Color(0xFF12C800),
  TetrominoShapes.Z: const Color(0xFFEE0000),
  TetrominoShapes.T: const Color.fromARGB(255, 144, 26, 190),
};
