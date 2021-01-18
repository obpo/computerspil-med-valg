
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
Scene letterScene = new Scene("bg_scene_letter.png");
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
  
  Line line0 = new Line("", "");
  line0.changeBackground("bg_scene_pc.png");
  line0.addObject("Sluk Computer", 333, 213, 100, 100, 1);
  line0.addObject("Jobsøger", 344, 36, 100, 100, 2);
  computorScene.addLine(line0);
  
  Line line1 = new Line("Du valgte at slukke computeren igen.", "");
  line1.changeScene("homeScene", 0);
  computorScene.addLine(line1);
  
  Line line2 = new Line("Du valgte at åbne jobsøgeren.", "");
  line2.changeBackground("bg_scene_pc_jobsite.png");
  line2.addObject("Tankstation", 414, 129, 140, 117, 3);
  line2.addObject("Kattekafe", 655, 129, 140, 117, 5);
  line2.addObject("Luk Vindue", 814, 64, 10, 10, 0);
  computorScene.addLine(line2);
  
  Line line3 = new Line("Du valgte at kigge på tankstaions jobbet.", "");
  line3.changeBackground("bg_scene_pc_jobad.png");
  line3.addObject("Take It!", 745, 197, 71, 65, 4);
  line3.addObject("Luk Vindue", 814, 64, 10, 10, 0);
  computorScene.addLine(line3);
  
  Line line4 = new Line("Du valgte at tage jobbet og tar nu hen til det.", "");
  line4.changeScene("gasStationScene", 0);
  computorScene.addLine(line4);
  
  Line line5 = new Line("Du valgte at kigge på kattecafé jobbet", "");
  line5.changeBackground("bg_scene_pc_catad.png");
  line5.addObject("Take It!", 745, 197, 71, 65, 6);
  line5.addObject("Luk Vindue", 814, 64, 10, 10, 0);
  computorScene.addLine(line5);
  
  Line line6 = new Line("Du valgte at tage jobbet og tar nu hen til det.", "");
  line6.changeScene("interScene", 0);
  computorScene.addLine(line6);
  

}

void loadGasStationScene() {
  
  Line line0 = new Line("Welcome to r/worklife", "RedditMoment");
  gasStationScene.addLine(line0);
  
  Line line1 = new Line("Going Back.", "");
  line1.changeScene("homeScene", 0);
  gasStationScene.addLine(line1);

}

void loadLetterScene(){
  
  Line line0 = new Line("Da du ankom, tjekkede du din postkasse. Til din overraskelse var brevet allerede ankommet", "");
  line0.changeBackground("bg_color_black");
  letterScene.addLine(line0);
  
  Line line1 = new Line("Interesant", "");
  line1.addButton("Åben brevet",2);
  letterScene.addLine(line1);
  
  Line line2 = new Line("Meget vigtig information","Din indre stemme");
  line2.changeBackground("bg_scene_letter.png");
  letterScene.addLine(line2);
  
  Line line3 = new Line("Med den her information, kunne der måske være mulighed for at foråde regeringen, og måske tjene lidt ekstra", "");
  line3.addButton("Det kunne måske gøre godt med lidt flere penge", 7);
  line3.addButton("Gør dit land stolt, penge er en bare en bonus", 4);
  letterScene.addLine(line3);
  
  //Lyve for regeringen
  Line line4 = new Line("Du møder op til tidspunktet. Det hele går som planlagt", "");
  letterScene.addLine(line4);
  
  Line line5 = new Line("I vandt, udelukkende på grund af din hjælp", "");
  line5.addButton("Modtag din belønning", 6);
  letterScene.addLine(line5);
  
  Line line6 = new Line("Tillykke med din pris. Du blev belønnet med en enormt stor mængde frugtfade. Du fortsatte livet, arbejdede resten af dine dage hos regeringen. Men aldrig igen skete der noget ligeså interasant som dengang du nedlgade banden.","");
  line6.changeBackground("bg_color_red");
  line6.changeScene("homeScene", 0);
  letterScene.addLine(line6);
  
  //Ikke lyve for regering
  Line line7 = new Line("Den følgende dag mødtes du med banden", "");
  line7.changeBackground("bg_scene_gang.png");
  letterScene.addLine(line7);
  
  Line line8 = new Line("Hvordan vil du præsentere regeringens planer?", "");
  line8.addButton("Jeg har måske nogle ting i kan bruge, jeg ved ikke om i er interreseret?", 9);
  line8.addButton("HEY! jeg har nogle vigtige informationer, det handler om regering, viden for penge!", 12);
  letterScene.addLine(line8);
  
  Line line9 = new Line("Hvad er det for en ynkelig måde at snakke på. Opfør dig ordenligt når du snakker til os","Banden");
  letterScene.addLine(line9);
  
  Line line10 = new Line("Hvad mon banden vil gøre mod dig? Det kommer til at blive grimt det her, jeg tror lige jeg kigger væk mens de håndtere dig","Program");
  line10.addButton("Krøl dig sammen til en kugle og gør klar til straf", 11);
  letterScene.addLine(line10);
  
  Line line11 = new Line("Æv, det gik da bare fulstændig glat var?. Først forådte du regering, og så vil banden ikke engang lytte til dig... Desværre opdagede regering dit forsøg :(  Det betød et liv bag trammer for dig.","");
  line11.changeBackground("bg_color_red");
  line11.changeScene("homeScene", 0);
  letterScene.addLine(line11);
  
  Line line12 = new Line("Det er vi intereserede i, penge er intet problem hvis vi kan bruge informationen. Så længe du selv bliver involveret.","Banden");
  letterScene.addLine(line12);
  
  Line line13 = new Line("Tilbuddet er godt","");
  line13.addButton("Fortæl banden om mødet", 14);
  letterScene.addLine(line13);
  
  Line line14 = new Line("Det blev en voldsom krig mellem banden og regeringen... HOLD PÅ HAT OG BRILLER DET VAR VOLDSOMT! Men, i din tapre kamp mod regering tog du et skud til hovedet. Så alle de penge til ingen nytte... Men du klarede det?","");
  line14.changeBackground("bg_color_green");
  line14.changeScene("homeScene", 0);
  letterScene.addLine(line14);

}


void loadPresidentialScene() {
  
  Line line0 = new Line("Welcome to r/mrpresident", "RedditMoment");
  presidentialScene.addLine(line0);
  
  Line line1 = new Line("Going Back.", "");
  line1.changeScene("homeScene", 0);
  presidentialScene.addLine(line1);

}
