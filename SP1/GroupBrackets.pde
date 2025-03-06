 
  ArrayList<GroupBrackets> groupBracket = new ArrayList<GroupBrackets>();

  class GroupBrackets {
  int x, y, bracketWidth, bracketHeight, groupColor;
  
  GroupBrackets(int tempX, int tempY, int tempBracketWidth, int tempBracketHeight, color tempGroupColor) {
    x = tempX;
    y = tempY;
    groupColor = tempGroupColor;
    fill(groupColor);
    noStroke();
    bracketWidth = tempBracketWidth;
    bracketHeight = tempBracketHeight;
   
  }
  
  void displayGroupBrackets() {
   fill(groupColor);
    rect(x, y, bracketWidth, bracketHeight);
  }

}
