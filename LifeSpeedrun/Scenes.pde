
// Scenes
Scene currentScene;

Scene monolougeScene = new Scene("bg_color_black");
Scene homeScene = new Scene("bg_scene_home.png");

Scene outsideScene = new Scene("");
Scene clothesScene = new Scene("");
Scene newsScene = new Scene("");
Scene computorScene = new Scene("");
Scene gasStationScene = new Scene("");
Scene presidentialScene = new Scene("");


void loadMonolouge() {
  
  Line line0 = new Line("Har livet en mening?", "");
  line0.addButton("Ja", 1);
  line0.addButton("Nej", 1);
  monolougeScene.addLine(line0);
  
  Line line1 = new Line("Uanset hvad du svarrede, så ville det ikke gøre nmogen foreskeld. Du ville altid ende her.", "");
  line1.changeScene("homeScene", 0);
  monolougeScene.addLine(line1);
  
  
  
}

 
void loadHomeScene() {

    Line line0 = new Line("Du er lige stået op hvad gør du", "");
    line0.addObject("Door", 166, 203, 58, 91, 1);
    line0.addObject("Clothes", 472, 342, 212, 128, 2);
    line0.addObject("Newspaper", 244, 386, 127, 100, 3);
    line0.addObject("Computor", 460, 83, 124, 106, 4);
    line0.addObject("Bed", 876, 92, 175, 314, 5);
    line0.changeBackground("bg_scene_home.png");
    line0.startMusic();
    homeScene.addLine(line0);
    
    Line line1 = new Line("Du valgte at gå udenfor.", "");
    line1.changeScene("outsideScene", 0);
    homeScene.addLine(line1);
    
    Line line2 = new Line("Du valgte at gå ud og vaske dit vasketøj.", "");
    line2.changeScene("clothesScene", 0);
    homeScene.addLine(line2);
    
    Line line3 = new Line("Du valgte at læse avisen.", "");
    line3.changeScene("newsScene", 0);
    homeScene.addLine(line3);
    
    Line line4 = new Line("Du valgte at chekke computeren.", "");
    line4.changeScene("computorScene", 0);
    homeScene.addLine(line4);
    
    Line line5 = new Line("Du valgte at ligge dig til at sove igen.", "");
    homeScene.addLine(line5);

    Line line6 = new Line("I søvnen indser du livet er værd at leve, du har ikke lyst til at udføre spillet korrekt. Men det er jo op til dig.", "");
    line6.changeBackground("bg_color_red");
    line6.addObject("Return", 0, 0, width, height, 0);
    line6.stopMusic();
    homeScene.addLine(line6);

}

void loadOutsideScene() {
  
  Line line0 = new Line("Welcome to r/outside", "RedditMoment");
  outsideScene.addLine(line0);
  
  Line line1 = new Line("Going Back.", "");
  line1.changeScene("homeScene", 0);
  outsideScene.addLine(line1);

}

void loadClothesScene() {

  Line line0 = new Line("Da du nåede ned i vaskekældren, var der til dit store shock en tyv der tog 1 par af dine underbukser","");
  line0.changeBackground("bg_scene_thief.png");
  clothesScene.addLine(line0);
  
  Line line1 = new Line("Det var nok et af de bedste par underbukser du havde.","");
  line1.addButton("Jagt underbuksetyven",2);
  line1.addButton("Han har sikkert mere brug for dem end mig",3);
  clothesScene.addLine(line1);
  
  Line line2 = new Line("Jagten på underbuksetyven førte dig udenfor, men han var ingen steder at blive set. Vasketøjet var ligeyldigt nu, livet udenfor havde fanget din opmærksomhed.","");
  line2.changeBackground("bg_scene_outside.png");
  line2.changeScene("outsideScene",0);
  clothesScene.addLine(line2);
  
  Line line3 = new Line("På vejen op til din lejligheden, i opgangen, der ser du en forhindring. Der er en gammel person på vej op ad trapperne.","");
  line3.changeBackground("bg_scene_fart.png");
  clothesScene.addLine(line3);
  
  Line line4 = new Line("Trangen til at slå en prut opstår i dig. DU kan vente, men hvem ved hvilket kaos det vil skabe i din lille lejlighed.","");
  line4.addButton("Tag din ulejlighed, og slå prutten",5);
  line4.addButton("Vær en høffelig person, der spare de ældres for denne ækelhed",6);
  clothesScene.addLine(line4);
  
  Line line5 = new Line("Det var en voldsom prut, ad. Det gamle menneske fik et enormt shock og faldt begover. Det resulterede i at du røg med i faldet. I det du landede kækkede du nakken. Den gamle person overlevede heldigvis faldet ved at lande på dig...","");
  line5.changeBackground("bg_color_green");
  line5.stopMusic();
  line5.changeScene("homeScene",0);
  clothesScene.addLine(line5);
  
  Line line6 = new Line("Det var godt du har dine manere i orden.","");
  line6.changeScene("homeScene",0);
  clothesScene.addLine(line6);
  
}

void loadNewsScene() {
  
  Line line0 = new Line("Welcome to r/worldnews", "RedditMoment");
  newsScene.addLine(line0);
  
  Line line1 = new Line("Going Back.", "");
  line1.changeScene("homeScene", 0);
  newsScene.addLine(line1);

}

void loadComputorScene() {
  
  Line line0 = new Line("Welcome to r/pcMasterracer", "RedditMoment");
  computorScene.addLine(line0);
  
  Line line1 = new Line("Going Back.", "");
  line1.changeScene("homeScene", 0);
  computorScene.addLine(line1);

}

void loadGasStationScene() {
  
  Line line0 = new Line("Welcome to r/worklife", "RedditMoment");
  gasStationScene.addLine(line0);
  
  Line line1 = new Line("Going Back.", "");
  line1.changeScene("homeScene", 0);
  gasStationScene.addLine(line1);

}

void loadPresidentialScene() {
  
  Line line0 = new Line("Welcome to r/mrpresident", "RedditMoment");
  presidentialScene.addLine(line0);
  
  Line line1 = new Line("Going Back.", "");
  line1.changeScene("homeScene", 0);
  presidentialScene.addLine(line1);

}
