
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
Scene computerScene = new Scene("bg_scene_pc.png");
Scene gasStationScene = new Scene("bg_scene_job.png");
Scene interScene = new Scene("bg_scene_interview.png");
Scene letterScene = new Scene("bg_scene_letter.png");
Scene presidentialScene = new Scene("bg_scene_mrpresident.png");


void loadMonolouge() {
  
  Line line0 = new Line("Har livet en mening?", "Programmet");
  line0.addButton("Ja", 1);
  line0.addButton("Nej", 1);
  monolougeScene.addLine(line0);
  
  Line line1 = new Line("Uanset hvad du svarede, så ville det ikke gøre nogen foreskel. Du ville altid ende her.", "Programmet");
  monolougeScene.addLine(line1);
  
  Line line2 = new Line("Spillets karakter er lige stået op. Dit mål, få karakteren dræbt så hurtigt som muligt. Den ved det ikke, men du skal tage nogle hverdagsvalg for den. Knæk og bræk… karakteren!", "Programmet");
  line2.addButton("ok", 3);
  monolougeScene.addLine(line2);
  
  Line line3 = new Line("...", "Programmet");
  line3.changeScene("homeScene", 0);
  monolougeScene.addLine(line3);
  
  
  
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
    line4.changeScene("computerScene", 0);
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

void loadComputerScene() {
  
  Line line0 = new Line("", "");
  line0.changeBackground("bg_scene_pc.png");
  line0.addObject("Sluk Computer", 333, 213, 100, 100, 1);
  line0.addObject("Jobsøger", 344, 36, 100, 100, 2);
  computerScene.addLine(line0);
  
  Line line1 = new Line("Du valgte at slukke computeren igen.", "");
  line1.changeScene("homeScene", 0);
  computerScene.addLine(line1);
  
  Line line2 = new Line("Du valgte at åbne jobsøgeren.", "");
  line2.changeBackground("bg_scene_pc_jobsite.png");
  line2.addObject("Tankstation", 414, 129, 140, 117, 3);
  line2.addObject("Kattekafe", 655, 129, 140, 117, 5);
  line2.addObject("Luk Vindue", 814, 64, 10, 10, 0);
  computerScene.addLine(line2);
  
  Line line3 = new Line("Du valgte at kigge på tankstaions jobbet.", "");
  line3.changeBackground("bg_scene_pc_jobad.png");
  line3.addObject("Take It!", 745, 197, 71, 65, 4);
  line3.addObject("Luk Vindue", 814, 64, 10, 10, 0);
  computerScene.addLine(line3);
  
  Line line4 = new Line("Du valgte at tage jobbet og tar nu hen til det.", "");
  line4.changeScene("gasStationScene", 0);
  computerScene.addLine(line4);
  
  Line line5 = new Line("Du valgte at kigge på kattecafé jobbet", "");
  line5.changeBackground("bg_scene_pc_catad.png");
  line5.addObject("Take It!", 745, 197, 71, 65, 6);
  line5.addObject("Luk Vindue", 814, 64, 10, 10, 0);
  computerScene.addLine(line5);
  
  Line line6 = new Line("Du valgte at tage jobbet og tar nu hen til det.", "");
  line6.changeScene("interScene", 0);
  computerScene.addLine(line6);

}

void loadGasStationScene() {
  
  Line line0 = new Line("Du blev ansat ved tankstationen med øjeblikkelig indsættelse.", "");
  line0.changeBackground("bg_scene_job.png");
  gasStationScene.addLine(line0);
  
  Line line1 = new Line("Der kommer en kunde ind ad døren. Kunden vil gerne købe en læskedrik.", "");
  gasStationScene.addLine(line1);
  
  Line line2 = new Line(line1.Text, "");
  line2.addButton("Sig: \"Kort eller kontant?\"", 11);
  line2.addButton("Sig: \"Stjernekastere er temmelige billige. Skal du have nogen med i købet?\"", 3);
  gasStationScene.addLine(line2);
  
  Line line3 = new Line("Nej tak, jeg bruger ikke stjernekastere.", "Kunde");
  gasStationScene.addLine(line3);
  
  Line line4 = new Line(line3.Text, "Kunde");
  line4.addButton("Sig: \"Det var ellers en god mulighed.\"", 11);
  line4.addButton("Sig: \"De er ellers rigtig fancy og sjove at lege med\"", 5);
  gasStationScene.addLine(line4);
  
  Line line5 = new Line("Jeg har altså ikke brug for dem.", "Kunde");
  gasStationScene.addLine(line5);
  
  Line line6 = new Line(line5.Text, "Kunde");
  line6.addButton("Sig: \"Nå\"", 11);
  line6.addButton("Sig: \"Så får du nogle på stationen!\"", 7);
  gasStationScene.addLine(line6);
  
  Line line7 = new Line("Kunden forlader tanken med læskedrikken og de gratis stjernekastere.", "");
  gasStationScene.addLine(line7);
  
  Line line8 = new Line("Kunden tænder stjernekasterne på tankstationens grund.", "");
  line8.changeBackground("bg_scene_job_lastchoice.png");
  gasStationScene.addLine(line8);
  
  Line line9 = new Line(line8.Text, "");
  line9.addButton("Ignorer problemet.", 10);
  line9.addButton("Råb: \"ARGHHH\"", 14);
  gasStationScene.addLine(line9);
  
  Line line10 = new Line("Der skete heldigvis ikke noget uheldigt.", "");
  line10.addObject("",0 ,0, width, height, 12);
  gasStationScene.addLine(line10);
  
  Line line11 = new Line("Kunden siger \"kontant\" og betaler.", "");
  gasStationScene.addLine(line11);
  
  Line line12 = new Line("Du fortsætter livet som tankstationsmedarbejder.", "");
  gasStationScene.addLine(line12);
  
  Line line13 = new Line("Livet ender normalt som gammel person i en hospitalsseng efter mange kedelige år på tankstationen.", "");
  line13.changeBackground("bg_color_red");
  line13.changeScene("homeScene", 0);
  gasStationScene.addLine(line13);
  
  Line line14 = new Line("Kunden får et shock og kaster stjernekasteren op i luften. Den lander i brønddækslet og tankstation springer i luften i en stor eksplosion.", "");
  gasStationScene.addLine(line14);
  
  Line line15 = new Line("Kunden overlever mirakuløstvis, og du er den eneste omkommer i ulykken.", "");
  gasStationScene.addLine(line15);
  
  Line line16 = new Line("Det skete, du gennemførte spillet. Føler du selv du gjorde det rigtige? Du gjorde ihvertfald en af de ting som vi havde planlagt inden du spillede spillet.", "");
  line16.changeBackground("bg_color_green");
  line16.changeScene("homeScene", 0);
  gasStationScene.addLine(line16);
  
}

void loadInterScene(){
  
  Line line0 = new Line("Wowowowo, hvad er det her for noget, det er ikke en del af spillet. Hvor er katte caféen?","Program");
  line0.changeBackground("bg_color_black");
  interScene.addLine(line0);
  
  Line line1 = new Line("Jeg leder lige i filerne, det kan være jeg kan finde noget. Det beklager jeg... Kigge kigge kigge... kigge kigge kigge... Jeg er en kode jeg har ingen øjne. ha ha","Program");
  interScene.addLine(line1);
  
  Line line2 = new Line("Arghh... Det er din skyld, du læste ikke betingelserne for katte jobbet. Dine øjne åbner ikke automatisk her. Du skal lave noget selv. Jeg smutter igen, hej hej","Program");
  line2.addButton("Åben dine øjne",3);
  interScene.addLine(line2);
  
  Line line3 = new Line("Goddag","Skræmmende person");
  line3.changeBackground("bg_scene_interview.png");
  interScene.addLine(line3);
  
  Line line4 = new Line("Er du klar til at gøre det her?!","I hvert fald ikke en kattecafé ejer");
  line4.addButton("Sig: øhh... Gøre hvad",5);
  interScene.addLine(line4);
  
  Line line5 = new Line("Kattejobbet er ikke rigtigt, men du påstår du er stærk og modig. Vi har brug for folk som dig. Dem vi havde før er... Vi har brug for nye. Er du klar på dit livs største arbejde og udfordring","Stadig ikke ejeren af en katte café");
  line5.addButton("Sig: Nej.",6);
  line5.addButton("Sig: Hvis jeg klar til en kattecafé er jeg klar til alt",7);
  interScene.addLine(line5);
  
  Line line6 = new Line("Regeringen mente du vidste for meget. De slettede alt hvad du vidste indtil videre. Men med den slettede hukkomelse røg alle dine problemmer og tanker om at speedrunne livet","");
  line6.changeBackground("bg_color_red");
  line6.changeScene("homeScene", 0);
  interScene.addLine(line6);
  
  Line line7 = new Line("Det er et meget vigtigt job, der er derfor en lang række sikkerhedsspørgsmål somk vi skal stille. Eller i hvertfald 1.","Person som aldrig har haft en katte café");
  interScene.addLine(line7);
  
  Line line8 = new Line("Er du villig til at at ofre dit liv for præsidenten","?");
  line8.addButton("Sig: arghhh, ikke lige alt, ikke for præsidenten",9);
  line8.addButton("Alt!",16);
  interScene.addLine(line8);
  
  Line line9 = new Line("Det udelukker lidt de planer vi havde med dig, men vi kan stadig bruge dig","Hvad er en kattecafé ejer overhovedet");
  line9.addButton("Sig: Jeg lytter",10);
  interScene.addLine(line9);
  
  Line line10 = new Line("Det håber jeg da du gør, eller så har jeg spildt alt min tid... Vi skal infiltrere et bandemiljø og nedlægge banden i en vildt sej kamp. Derved stoppe deres ulovlige handlinger","Ikke relateret til katte overhoved person");
  interScene.addLine(line10);
  
  Line line11 = new Line("Er du klar på sådan en udfordring?","En kat?");
  line11.addButton("Sig: Jeg har desværre ikke tid",12);
  line11.addButton("Sig: Markant bedre end et kattejob, det gør jeg gerne",14);
  interScene.addLine(line11);
  
  Line line12 = new Line("Vi kan ikke bruge dig til noget","Person");
  line12.addButton("Nå...",13);
  interScene.addLine(line12);
  
  Line line13 = new Line("Din hukommelse blev slettet af regeringen sammen med alle dine problemmer, og målet om at speedrunne livet. Men det var altid noget underligt over den dag. Den ene dag i dit liv som du ikke kan huske du har levet","");
  line13.changeBackground("bg_color_red");
  line13.changeScene("homeScene",0);
  interScene.addLine(line13);
  
  Line line14 = new Line("Du vil modtage et brev snart, meget snart. Hvis ses til angrebbet. Farvel","Indsæt mærkeligt navn her:");
  line14.addButton("Hygge hejsa",15);
  line14.addButton("Farvel",15);
  interScene.addLine(line14);
  
  Line line15 = new Line("Du forladte det mærkelige mødested, underligt nok lå det i lejligheden lige ved siden af. Lille verden","");
  line15.changeBackground("bg_color_black");
  line15.changeScene("letterScene",0);
  interScene.addLine(line15);
  
  Line line16 = new Line("Jeg tager dit ord meget bogstaveligt","Katte café ejer vil passe godt person");
  line16.changeScene("presidentialScene",0);
  interScene.addLine(line16);
  
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
  line8.addButton("HEY! jeg har nogle vigtige informationer, om regering. Viden for penge!", 12);
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
  
  Line line0 = new Line("Om få timer skal presidenten tale offentligt, der er stor risiko for drabsforsøg","Kat kat kat katteperson");
  line0.changeBackground("bg_scene_interview.png");
  presidentialScene.addLine(line0);
  
  Line line1 = new Line("Er du klar allerede der?","Måske en hundecafé ejer");
  line1.addButton("Ja, selvfølgelig",2);
  line1.addButton("Nej, det for tidligt",12);
  presidentialScene.addLine(line1);
  
  Line line2 = new Line("Perfekt, du er en fantastisk arbejder","Kat, plat, mat, navn");
  presidentialScene.addLine(line2);
  
  Line line3 = new Line("Eftersom at du er ny, får du muligheden for at vælge din position. Vil du stå direkte ved siden af presidenten, første mand til at risikere det hele. Eller vil du tag en afslappende tilgang, og have en person mellem dig og presidenten?","Miav manden");
  line3.addButton("Sig: Jeg holder mig lige lidt bagved, jeg er jo ny",4);
  line3.addButton("Sig: Jeg går all-in, ved siden af presidenten",7);
  presidentialScene.addLine(line3);
  
  Line line4 = new Line("Et par timer efter til mødet","");
  line4.changeBackground("bg_color_black");
  presidentialScene.addLine(line4);
  
  Line line5 = new Line("Åh Nej! En person har stilt sig op for at prøve at skyde presidenten","");
  line5.changeBackground("bg_scene_mrpresident.png");
  line5.addButton("Åh NEJ!",6);
  presidentialScene.addLine(line5);
  
  Line line6 = new Line("Men din skrækkelige position har gjort så du ikke kan gøre noget ved problemmet. hmmmmmm","Skuffet computer program");
  line6.addButton("Ups",12);
  presidentialScene.addLine(line6);
  
  Line line7 = new Line("Et par timer efter til mødet","");
  line7.changeBackground("bg_color_black");
  presidentialScene.addLine(line7);
  
  Line line8 = new Line("Åh Nej! En person har stilt sig op for at prøve at skyde presidenten","");
  line8.changeBackground("bg_scene_mrpresident.png");
  presidentialScene.addLine(line8);
  
  Line line9 = new Line("REAGER!","");
  line9.addButton("Forsøg at hop ind foran presidenten",11);
  line9.addButton("Ikke lige nu, jeg står lige så godt",10);
  presidentialScene.addLine(line9);
  
  Line line10 = new Line("Wow en sand helt. Personen ved siden af dig reagerede hurtigt på din stilleståning. Han fejlede sit hop, ramte dig og du røg ind foran patronen. Et heroisk øjeblik. En fantastisk ende","Stolt program");
  line10.changeBackground("bg_color_green");
  line10.changeScene("homeScene", 0);
  presidentialScene.addLine(line10);
  
  Line line11 = new Line("Du fik aldrig nogen træning, det var et skrækkeligt hop. Har du aldrig hoppet før? Du landede 2 meter ved siden af presidenten.","");
  line11.changeBackground("bg_color_black");
  line11.addButton("Accepter din skæbne, og modtag en straf for dit forsøg",12);
  presidentialScene.addLine(line11);
  
  Line line12 = new Line("Din skæbne ender her så, men vi kan bruge dig til noget helt andet. Vi har indført nyt menukort i presidentens hus. Kartoffler som det eneste, og de skal skraldes","Hunde person, ikke katte person");
  line12.changeBackground("bg_scene_interview.png");
  presidentialScene.addLine(line12);
  
  Line line13 = new Line("Det var ikke godt. Det bliver til mange kartoffler igennem et helt liv... Hav et godt kartoffelskralde liv","");
  line13.changeBackground("bg_color_red");
  line13.changeScene("homeScene", 0);
  presidentialScene.addLine(line13);


}
