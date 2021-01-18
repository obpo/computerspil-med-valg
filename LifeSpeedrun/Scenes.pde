
// Scenes
Scene currentScene;

Scene monolougeScene = new Scene("bg_color_black");
Scene homeScene = new Scene("bg_scene_home.png");

Scene outsideScene = new Scene("bg_scene_outside.png");
Scene pianoAdScene = new Scene("bg_scene_pianoad.png");
Scene carScene = new Scene("bg_scene_car.png");
Scene craneScene = new Scene("bg_scene_crane.png");
Scene clothesScene = new Scene("bg_scene_thief.png");
Scene newsScene = new Scene("bg_scene_news.png");
Scene computorScene = new Scene("bg_scene_pc.png");
Scene gasStationScene = new Scene("bg_scene_job.png");
Scene presidentialScene = new Scene("bg_scene_mrpresident.png");


void loadMonolouge() {
  
  Line line0 = new Line("Har livet en mening?", "");
  line0.addButton("Ja", 1);
  line0.addButton("Nej", 1);
  monolougeScene.addLine(line0);
  
  Line line1 = new Line("Uanset hvad du svarede, så ville det ikke gøre nogen foreskel. Du ville altid ende her.", "");
  line1.changeScene("homeScene", 0);
  monolougeScene.addLine(line1);
  
  
  
}

 
void loadHomeScene() {

    Line line0 = new Line("Du er lige stået op hvad gør du", "");
    line0.addObject("Door", 166, 203, 58, 91, 1);
    line0.addObject("Clothes", 472, 342, 212, 128, 2);
    line0.addObject("Newspaper", 244, 386, 127, 100, 3);
    line0.addObject("Computer", 460, 83, 124, 106, 4);
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
  
  Line line0 = new Line("Du befinder dig udenfor.", "");
  outsideScene.addLine(line0);
  
  Line line1 = new Line("Du ser et reklameskilt for et klaver.", "");
  line1.addButton("Gå hen til skiltet", 2);
  line1.addButton("Fortsæt hen ad vejen", 3);
  outsideScene.addLine(line1);
  
  Line line2 = new Line("Du går hen til skiltet.", "");
  line2.changeScene("pianoAdScene", 0);
  outsideScene.addLine(line2);
  
  Line line3 = new Line("Du fortsætter hen ad vejen.", "");
  line3.changeScene("carScene", 0);
  outsideScene.addLine(line3);

}

void loadPianoAdScene() {
  
  Line line0 = new Line("Der er mulighed for at købe et klaver.", "");
  pianoAdScene.addLine(line0);
  
  Line line1 = new Line("Vil du købe klaveret?", "");
  line1.addButton("Ja, jeg køber det!", 2);
  line1.addButton("Nej, jeg springer over...", 3);
  pianoAdScene.addLine(line1);
  
  Line line2 = new Line("Du købte klaveret.", "");
  line2.changeScene("craneScene", 0);
  pianoAdScene.addLine(line2);
  
  Line line3 = new Line("Du købte ikke klaveret.", "");
  line3.changeScene("carScene", 0);
  pianoAdScene.addLine(line3);
  
}

void loadCarScene() {
  
  Line line0 = new Line("Du fortsatte ned ad vejen, men der var ikke noget spændende, så du gik ud midt på vejen.", "");
  line0.changeBackground("bg_scene_car.png");
  carScene.addLine(line0);
  
  Line line1 = new Line("Der kommer en bil mod dig.", "");
  line1.addButton("Gå tilbage til fortovet", 2);
  line1.addButton("Bliv stående og se hvad der sker", 3);
  carScene.addLine(line1);
  
  Line line2 = new Line("Det var tæt på! Hvad skulle man dog gøre efter sådan en nær-døds-oplevelse?", "");
  line2.addButton("Gå tilbage til lejligheden og tag et hvil.", 5);
  line2.addButton("Tag ud og handle, der mangler sikkert mælk i køleskabet.", 6);
  carScene.addLine(line2);
  
  Line line3 = new Line("Du troede det ville virke, selvfølgelig undgik billisten dig!", "");
  carScene.addLine(line3);
  //####//^^
  Line line4 = new Line("Det gjorde billisten bag den anden billist dog ikke, vedkommende ramte dig. Du døde dog ikke af bilen der ramte dig. Men du skulle indlægges. Der fik du noget hospitalsmad der gav dig voldsom madforgiftning du ikke kunne klare.", "");
  line4.changeBackground("bg_color_green");
  line4.changeScene("homeScene", 0);
  carScene.addLine(line4);
  
  Line line5 = new Line("På vejen tilbage til din lejlighed så du en fugl. Ej hvor spændende.", "");
  line5.changeScene("homeScene", 6);
  carScene.addLine(line5);
  
  Line line6 = new Line("Efter en tur i supermarkedet var det tid til at komme hjem med den manglende mælk og få et hvil.", "");
  line6.changeScene("homeScene", 6);
  carScene.addLine(line6);
  
}

void loadCraneScene() {
  
  Line line0 = new Line("Du skal have have klaveret op i din lejlighed, men det kan ikke være i opgangen. Derfor skal det hejses op med en kran.", "");
  line0.changeBackground("bg_scene_crane.png");
  craneScene.addLine(line0);
  
  Line line1 = new Line("Kranføren ankommer, men hans reb er slidt. Han kan komme tilbage med et nyt reb, hvilket tager tid, eller han kan bruge det slidte og du får en rabat.", "");
  line1.addButton("Lad kranføren hente et nyt reb", 2);
  line1.addButton("Benytte det svage reb og få en rabat", 3);
  craneScene.addLine(line1);
  
  Line line2 = new Line("Kranføren henter et nyt reb. Han får klaveret op i lejligheden uden fejl. Fornuften var det rette sted. Men det var jo ikke meningen. Du endte med få klaveret op i lejligheden. Du øvede og øvede. Din musik spredte sig over hele verdenen og du levede et langt liv med en succesfuld musik karriere.", "");
  line2.changeBackground("bg_color_red");
  line2.changeScene("homeScene", 0);
  craneScene.addLine(line2);
  
  Line line3 = new Line("Kranføren begynder med det samme med det slidte reb. Hov, det kunne ingen havde forudset. Rebet kunne ikke holde til klaveret efter noget tid. Og du havde selvfølgelig valgt at stille dig under klaveret mens i hejste det op.", "");
  line3.changeBackground("bg_color_green");
  line3.changeScene("homeScene", 0);
  craneScene.addLine(line3);
  
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
  
  Line line0 = new Line("Der var to artikler i avisen.", "");
  line0.changeBackground("bg_scene_news.png");
  line0.addObject("Mælkepriser", 287, 179, 336, 418, 1);
  line0.addObject("JOB?", 668, 149, 297, 434, 3);
  newsScene.addLine(line0);
  
  Line line1 = new Line("Du valgte at læse artiklen om de lokale mælkepriser.", "");
  line1.changeBackground("bg_scene_news_article.png");
  newsScene.addLine(line1);
  
  Line line2 = new Line("Efter at have læst artiklen pakkede du den væk igen.", "");
  line2.changeScene("homeScene", 0);
  newsScene.addLine(line2);
  
  Line line3 = new Line("Du valgte at kigge på jobartiklen.", "");
  line3.changeBackground("bg_scene_news_jobad.png");
  newsScene.addLine(line3);
  
  Line line4 = new Line(line3.Text, "");
  line4.addButton("Det lyder som en god mugelighed", 5);
  line4.addButton("Det er nok ikke den smarteste ide", 6);
  newsScene.addLine(line4);
  
  Line line5 = new Line("Du valgte at tage jobbet og tar nu hen til det.", "");
  line5.changeScene("gasStationScene", 0);
  newsScene.addLine(line5);
  
  Line line6 = new Line("Du valgte at lade vær med at tage jobbet.", "");
  line6.changeScene("homeScene", 0);
  newsScene.addLine(line6);
  

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
