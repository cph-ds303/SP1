  
  // Fond variables
    int fondSize = 40;
    boolean smoothLettering = true;
    String teamFondStyle = "DiwanMishafiGold",
           groupFondStyle = "ArialHebrew-Bold";

  // Bracket variables
    int bracketMargin = 32, 
        bracketGap = 46, 
        bracketHeight = 40,
        bracketLengthGroupAB = 490,
        bracketLengthGroupCD = 470,
        numberOfBracketsPerSection = 4,
        bracketTipWidth = 15,
        bracketTipXValueGroupAB = 495,
        bracketTipXValueGroupCD = 980,
        xStartValueGroupAB = 20,
        xStartValueGroupBD = 520,
        yStartValueGroupAC = 30,
        yStartValueGroupBD = 250;
   
  // Groupname display variables
    int groupNameXValueGroupAB = 215,
        groupNameXValueGroupCD = 715,
        groupNameYValueGroupAC = 23,
        groupNameYValueGroupBD = 242;

  // Colors used in the code
    color CYAN = color (19,209,240),
          YELLOW = color (246,255,5),
          WHITE = color (255),
          backgroundColor = color (26,44,85),
          sketchEdgeColor = color (34,34,34);

  void setup() {
    size(1000, 450,P2D);
    smooth();
  
  // Creates fonts once (had some memory issues xd)
    teamFont = createFont(teamFondStyle, fondSize, smoothLettering);
    groupFont = createFont(groupFondStyle, fondSize, smoothLettering);
  
  // Group A - Loading flag images
    russiaFlag = loadImage("Russia.jpg");
    saudiArabiaFlag = loadImage("SaudiArabia.jpg");
    egyptFlag = loadImage("Egypt.jpg");
    uruguayFlag = loadImage("Uruguay.jpg");
  
  // Group A - Creating new flag instances and connecting them to the loaded flag images
    flags[0]  = new Flags(russiaFlag);
    flags[1]  = new Flags(saudiArabiaFlag);
    flags[2]  = new Flags(egyptFlag);
    flags[3]  = new Flags(uruguayFlag);
  
  // Group B - Loading flag images
    portugalFlag = loadImage("Portugal.jpg");
    spainFlag = loadImage("Spain.jpg");
    moroccoFlag = loadImage("Morocco.png");
    iranFlag = loadImage("Iran.png");
  
  // Group B - Creating new flag instances and connecting them to the loaded flag images
    flags[4]  = new Flags(portugalFlag);
    flags[5]  = new Flags(spainFlag);
    flags[6]  = new Flags(moroccoFlag);
    flags[7]  = new Flags(iranFlag);
  
  // Group C - Loading flag images
    franceFlag = loadImage("France.jpg");
    australiaFlag = loadImage("Australia.jpg");
    peruFlag = loadImage("Peru.jpg");
    denmarkFlag = loadImage("Denmark.jpg");
  
  // Group C - Creating new flag instances and connecting them to the loaded flag images
    flags[8]  = new Flags(franceFlag);
    flags[9]  = new Flags(australiaFlag);
    flags[10] = new Flags(peruFlag);
    flags[11] = new Flags(denmarkFlag);
  
  // Group D - Loading flag images
    argentinaFlag = loadImage("Argentina.jpg");
    icelandFlag = loadImage("Iceland.jpg");
    croatiaFlag = loadImage("Croatia.jpg");
    nigeriaFlag = loadImage("Nigeria.jpg");
  
  // Group D - Creating new flag instances and connecting them to the loaded flag images
    flags[12] = new Flags(argentinaFlag);
    flags[13] = new Flags(icelandFlag);
    flags[14] = new Flags(croatiaFlag);
    flags[15] = new Flags(nigeriaFlag);
  
  // Adding all groupBrackets to the ArrayList

    for (int i = 0; i < numberOfBracketsPerSection; i++) {
    
  // Displaying the group brackets & displaying colored tips on the end of group brackets

  
  // Group Bracket A
    groupBracket.add(new GroupBrackets(xStartValueGroupAB, (yStartValueGroupAC + i * bracketGap), bracketLengthGroupAB, bracketHeight, color(WHITE))); 
    groupBracket.add(new GroupBrackets(bracketTipXValueGroupAB, (yStartValueGroupAC + i * bracketGap), bracketTipWidth, bracketHeight, color(CYAN))); // Group A tip

  // Group Bracket B 
    groupBracket.add(new GroupBrackets(xStartValueGroupAB, (yStartValueGroupBD + i * bracketGap), bracketLengthGroupAB, bracketHeight, color(WHITE))); 
    groupBracket.add(new GroupBrackets(bracketTipXValueGroupAB, (yStartValueGroupBD + i * bracketGap), bracketTipWidth, bracketHeight, color(YELLOW))); // Group B tip

  // Group Bracket C  
    groupBracket.add(new GroupBrackets(xStartValueGroupBD, (yStartValueGroupAC + i * bracketGap), bracketLengthGroupCD, bracketHeight, color(WHITE)));
    groupBracket.add(new GroupBrackets(bracketTipXValueGroupCD, (yStartValueGroupAC + i * bracketGap), bracketTipWidth, bracketHeight, color(CYAN))); // Group C tip

  // Group Bracket D  
    groupBracket.add(new GroupBrackets(xStartValueGroupBD, (yStartValueGroupBD + i * bracketGap), bracketLengthGroupCD, bracketHeight, color(WHITE)));
    groupBracket.add(new GroupBrackets(bracketTipXValueGroupCD, (yStartValueGroupBD + i * bracketGap), bracketTipWidth, bracketHeight, color(YELLOW))); // Group D tip

  }
  
  }
 
 void draw(){
  
    background(backgroundColor);
    
    // Middle line divider and left & bottom brown bracket
    fill(255);
    rect (514, 0, 2, height);
    fill(sketchEdgeColor);
    rect(0, 0, 20, height);
    rect(0, 430, width, 20);

    
  // displaying group names in color
    displayGroupNames("GROUP A", groupNameXValueGroupAB, groupNameYValueGroupAC, color(CYAN));
    displayGroupNames("GROUP B", groupNameXValueGroupAB, groupNameYValueGroupBD, color(YELLOW));
    displayGroupNames("GROUP C", groupNameXValueGroupCD, groupNameYValueGroupAC, color(CYAN));
    displayGroupNames("GROUP D", groupNameXValueGroupCD, groupNameYValueGroupBD, color(YELLOW));


  // Displaying all squares in the ArrayList
    for (GroupBrackets gb : groupBracket) {
      gb.displayGroupBrackets();
  }
  
  // for-loop for Group: A Flags
    for (int A = 0; A < 4; A++) { 
    
  // Calling method for displaying flags      
    flags[A].displayFlags(20,(30 + A * 46));
    
  // Calling method for displaying teamNames
    displayTeamNames(teamNames[A], 130, ((31 + bracketMargin) + A * bracketGap));
  
}
  
  // for-loop for Group: B Flags
    for (int B = 4; B < 8; B++) { 
    
  // Calling method for displaying flags      
    flags[B].displayFlags(20,(66 + B * bracketGap));
    
  // Calling method for displaying teamNames
    displayTeamNames(teamNames[B], 130, ((66 + bracketMargin) + B * bracketGap));
    
   }
   
  // for-loop for Group: C Flags
    for (int C = 8; C < 12; C++) { 
    
  // Calling method for displaying flags 
    flags[C].displayFlags(520,(30 + (C -8) * bracketGap));
   
  // Calling method for displaying teamNames
    displayTeamNames(teamNames[C], 630, ((31 + bracketMargin) + (C-8) * bracketGap));

   }    
   
  // for-loop for Group: D Flags
    for (int D = 12; D < 16; D++) { 
    
  // Calling method for displaying flags
    flags[D].displayFlags(520,(66 + (D -8) * bracketGap));
   
  // Calling method for displaying teamNames
    displayTeamNames(teamNames[D], 630, ((66 + bracketMargin) + (D-8) * bracketGap));

} 
  
  }
