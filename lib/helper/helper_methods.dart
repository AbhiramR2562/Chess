bool isWhite(int index) {
  int x = index ~/ 8; // this gives us the integer division about the row
  int y = index % 8; // this gives us the integer division about the Column

  // alternate colors for each square
  bool isWhite = (x + y) % 2 == 0;

  return isWhite;
}

bool isInBoard(int row, int col) {
  return row >= 0 && row < 8 && col >= 0 && col < 8;
}
