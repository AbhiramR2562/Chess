import 'package:chess/components/piece.dart';
import 'package:chess/values/colors.dart';
import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  final bool isWhite;
  final ChessPiece? piece;
  final bool isSelected;
  final bool isValidMove;
  final void Function()? onTap;

  const Square({
    super.key,
    required this.isWhite,
    required this.piece,
    required this.isSelected,
    required this.onTap,
    required this.isValidMove,
  });

  @override
  Widget build(BuildContext context) {
    Color? squareColor;

    // if selected, square is green
    if (isSelected) {
      squareColor = Colors.green;
    } else if (isValidMove) {
      squareColor = Colors.green[300];
    }

    // other wise default color
    else {
      squareColor = isWhite ? foregroundColor : backgroundColor;
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: squareColor,
        margin: EdgeInsets.all(isValidMove ? 2 : 0),
        child: piece != null
            ? Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  piece!.imagePath,
                  color: piece!.isWhite ? Colors.white : Colors.black,
                ),
              )
            : null,
      ),
    );
  }
}
