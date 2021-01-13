
class Line {
  
  // Text to be shown
  String Text;
  String Person;
  
  // Interactivity
  boolean interactable = false;
  boolean buttons = false;
  boolean clickableScene = false;
  
  // Events
  boolean changeMusic = false;
  boolean changeBgIMG = false;
  boolean changeSceneAfter = false;
  
  // Infomation about Interactivity
  ArrayList<String> buttonText = new ArrayList<String>();
  IntList newPos = new IntList();
  
  // Information about Events
  ArrayList<int[]> newObjectAreas = new ArrayList<int[]>();
  String newBgIMG;
  String newScene;
  int startingPoint;
  boolean startMusic = false;
  boolean stopMusic = false;
  
  // Line Constructor
  // The text being said, who is saying it
  Line(String t, String p) {
    this.Text = t;
    this.Person = p;
  }
  
  // Creating a button
  // The buttons Text, New Position
  void addButton(String text, int nP) {
    this.interactable = true;
    this.buttons = true;
    
    
    int offset = newPos.size();
    int y = 100 + 80*offset;
    int[] pos = {310, y, 660, 70};
    
    this.buttonText.add(text);
    this.newObjectAreas.add(pos);
    this.newPos.append(nP);
    
  
  }

  // Creating a clickable object
  // Name of object, x position, y position, Width, Height, New Position
  void addObject(String object, int x, int y, int w, int h, int nP) {
    this.interactable = true;
    this.clickableScene = true;
    int[] pos = {x, y, w, h};
    
    this.newObjectAreas.add(pos);
    this.newPos.append(nP);
  }
  
  // Name of file
  void changeBackground(String newIMG){
    this.changeBgIMG = true;
    this.newBgIMG = newIMG;
  
  }
  
  // New Scene, Starting Position
  void changeScene(String nS, int sP) {
    this.changeSceneAfter = true;
    this.newScene = nS;
    this.startingPoint = sP;
    
  }
  
  // None
  void startMusic() {
    this.startMusic = true;
  }
  
  // None
  void stopMusic() {
    this.stopMusic = true;
  }
  
}
