import processing.sound.*;

// Game Variables
int position;
ArrayList<int[]> objectAreas = new ArrayList<int[]>();
boolean mouseReleased = true;

// Image Scenes
PImage scene_test;
PImage scene_home;

PImage scene_thief;
PImage scene_fart;

PImage scene_outside;
PImage scene_pianoad;
PImage scene_crane;
PImage scene_car;

PImage scene_news;
PImage scene_news_article;
PImage scene_news_jobad;

PImage scene_pc;
PImage scene_pc_jobsite;
PImage scene_pc_jobad;
PImage scene_pc_catad;

PImage scene_job;
PImage scene_job_lastchoice;

PImage scene_interview;
PImage scene_letter;
PImage scene_gang;
PImage scene_mrpresident;


// Image Objects
PImage textbox;
PImage textbutton;

// Music
SoundFile backgroundMusic;

// Initialize the Game
void initGame() {
  
  // Load Scenes
  loadMonolouge();
  loadHomeScene();
  loadOutsideScene();
  loadPianoAdScene();
  loadCarScene();
  loadCraneScene();
  loadClothesScene();
  loadNewsScene();
  loadComputerScene();
  loadGasStationScene();
  loadInterScene();
  loadLetterScene();
  loadPresidentialScene();
  
  // Set start 
  position = 0;
  currentScene = monolougeScene;
  
  // Ping Handlers to sync variables
  musicHandler();
  lineTransitionHandler(); //<>//

}

void setup(){ //<>//
  size(1280, 720);
  frameRate(30);
  background(0);
  
  // Load Scenes
  text("Loading Scenes", 0, 20);
  scene_test = loadImage("bg_scene_test.png");
  scene_home = loadImage("bg_scene_home.png");
  
  scene_thief =          loadImage("bg_scene_thief.png");
  scene_fart =           loadImage("bg_scene_fart.png");
  
  scene_outside =        loadImage("bg_scene_outside.png");
  scene_pianoad =        loadImage("bg_scene_pianoad.png");
  scene_crane =          loadImage("bg_scene_crane.png");
  scene_car =            loadImage("bg_scene_car.png");
  
  scene_news =           loadImage("bg_scene_news.png");
  scene_news_article =   loadImage("bg_scene_news_article.png");
  scene_news_jobad =     loadImage("bg_scene_news_jobad.png");
  
  scene_pc =             loadImage("bg_scene_pc.png");
  scene_pc_jobsite =     loadImage("bg_scene_pc_jobsite.png");
  scene_pc_jobad =       loadImage("bg_scene_pc_jobad.png");
  scene_pc_catad =       loadImage("bg_scene_pc_catad.png");
  
  scene_job =            loadImage("bg_scene_job.png");
  scene_job_lastchoice = loadImage("bg_scene_job_lastchoice.png");
  
  scene_interview =      loadImage("bg_scene_interview.png");
  scene_letter =         loadImage("bg_scene_letter.png");
  scene_gang =           loadImage("bg_scene_gang.png");
  scene_mrpresident =    loadImage("bg_scene_mrpresident.png");
  
  
  // Load Objects
  text("Loading Objects", 0, 40);
  textbox = loadImage("obj_textbox.png");
  textbutton = loadImage("obj_textbutton.png");
  
  // Load Music
  text("Loading Music", 0, 60);
  backgroundMusic = new SoundFile(this, "bgm_test.mp3");
  backgroundMusic.amp(0.05);
  
  // Initialize Game
  initGame();
  
}

void draw() {
  background(0);   // Clear Sceen
 
  imgHandler();    // Draw Images
  textHandler();   // Write Text
  println(position);
  
  // Test if mouse was pressd of released on the current frame
  if (mousePressed && mouseReleased) {
    mouseReleased = false;
    clicked();
  } else if (!mousePressed && !mouseReleased) {
    mouseReleased = true;
  }
  
}

// Do things when mouse is clicked
void clicked() {
  
  
  // If it is a normal go to next scene
  if (currentScene.lines.get(position).interactable == false) {
    if (currentScene.lines.get(position).changeSceneAfter) {
      sceneTransitionHandler();
      
    } else {
      position += 1;
      lineTransitionHandler();
    }
  }
  
  // If it is an interactable scene and there was clicked on an interactable area, go to the corresponding position
  else {
    
    for (int i = 0; i < currentScene.lines.get(position).newPos.size(); i++) {
      if (objectAreas.get(i)[0] <= mouseX && mouseX <= objectAreas.get(i)[0] + objectAreas.get(i)[2]) {
        if (objectAreas.get(i)[1] <= mouseY && mouseY <= objectAreas.get(i)[1] + objectAreas.get(i)[3]) {
          int temp = currentScene.lines.get(position).newPos.get(i);
          position = temp;
          lineTransitionHandler();
        }
      }
    }
  }
}
