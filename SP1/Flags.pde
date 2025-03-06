
  Flags[] flags = new Flags[16];
  
    PImage russiaFlag, saudiArabiaFlag, egyptFlag, uruguayFlag; // Group A
    PImage portugalFlag, spainFlag, moroccoFlag, iranFlag; // Group B
    PImage franceFlag, australiaFlag, peruFlag, denmarkFlag; // Group C
    PImage argentinaFlag, icelandFlag, croatiaFlag, nigeriaFlag; // Group D

  class Flags {
    
  PImage flagImg;
    
    Flags(PImage flagImg) {
      
      this.flagImg = flagImg;
  }
  
  void displayFlags(int x, int y) {
    
    image(flagImg, x, y, 80, 40);
  }
  
  }
  
