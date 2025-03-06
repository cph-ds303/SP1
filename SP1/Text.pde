   String[] teamNames = {
    "RUSSIA", "SAUDI    ARABIA", "EGYPT", "URUGUAY", 
    "PORTUGAL", "SPAIN", "MOROCCO", "IRAN",
    "FRANCE", "AUSTRALIA", "PERU", "DENMARK",
    "ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"
  };

  String[] groupNames = {
    "GROUP D", "GROUP C", "GROUP B", "GROUP A"
  };

  // allows loading custom font, without using .vlw fonts == gives cleaner edge
  PFont teamFont;
  PFont groupFont;

  void displayTeamNames(String teamName, int x, int y) {
    textFont(teamFont);
    textSize(30);
    fill(0);
    text(teamName, x, y);
  }

  void displayGroupNames(String groupName, int x, int y, color groupColor) {
    textFont(groupFont);
    textSize(20);
    fill(groupColor);
    text(groupName, x, y);
  }

  
