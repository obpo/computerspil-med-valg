 //<>// //<>//
// Handles transitions
void lineTransitionHandler() { //<>//
  
  musicHandler();
  objectAreas = new ArrayList<int[]>();
  
  if (currentScene.lines.get(position).interactable) {
    for (int i = 0; i < currentScene.lines.get(position).newPos.size(); i++) {
      objectAreas.add(currentScene.lines.get(position).newObjectAreas.get(i));
    }
    
  }
  
  if (currentScene.lines.get(position).changeBgIMG) {
    currentScene.background = currentScene.lines.get(position).newBgIMG;
  }
  
}

void sceneTransitionHandler() { //<>//
  
  int temp = currentScene.lines.get(position).startingPoint;
  
  switch(currentScene.lines.get(position).newScene) {
    case "monolougeScene":
      currentScene = monolougeScene;
      break;
      
    case "homeScene":
      currentScene = homeScene;
      break;
      
    case "outsideScene":
      currentScene = outsideScene;
      break;
    
    case "pianoAdScene":
      currentScene = pianoAdScene;
      break;
    
    case "carScene":
      currentScene = carScene;
      break;
    
    case "craneScene":
      currentScene = craneScene;
      break;
      
    case "clothesScene":
      currentScene = clothesScene;
      break;
      
    case "newsScene":
      currentScene = newsScene;
      break;
    
    case "computorScene":
      currentScene = computorScene;
      break;
      
    case "gasStationScene":
      currentScene = gasStationScene;
      break;
      
    case "presidentialScene":
      currentScene = presidentialScene;
      break;
      
    default:
      println("Scene is not recognised. Was it spelled correctly?");
      break;
  }
  
  position = temp;
  lineTransitionHandler();

}

// Handles images
void imgHandler() { //<>//
  
  // Draws the background
  switch (currentScene.background) {
    case "bg_scene_test.png":
      image(scene_test, 0, 0, width, height);
      break;
    case "bg_scene_home.png":
      image(scene_home, 0, 0, width, height);
      break;
    case "bg_scene_thief.png":
      image(scene_thief, 0, 0, width, height);
      break;
    case "bg_scene_fart.png":
      image(scene_fart, 0, 0, width, height);
      break;
    case "bg_scene_outside.png":
      image(scene_outside, 0, 0, width, height);
      break;
    case "bg_scene_pianoad.png":
      image(scene_pianoad, 0, 0, width, height);
      break;
    case "bg_scene_crane.png":
      image(scene_crane, 0, 0, width, height);
      break;
    case "bg_scene_car.png":
      image(scene_car, 0, 0, width, height);
      break;
    case "bg_scene_news.png":
      image(scene_news, 0, 0, width, height);
      break;
    case "bg_scene_news_article.png":
      image(scene_news_article, 0, 0, width, height);
      break;
    case "bg_scene_news_jobad.png":
      image(scene_news_jobad, 0, 0, width, height);
      break;
    case "bg_scene_pc.png":
      image(scene_pc, 0, 0, width, height);
      break;
    case "bg_scene_pc_jobsite.png":
      image(scene_pc_jobsite, 0, 0, width, height);
      break;
    case "bg_scene_pc_jobad.png":
      image(scene_pc_jobad, 0, 0, width, height);
      break;
    case "bg_scene_pc_catad.png":
      image(scene_pc_catad, 0, 0, width, height);
      break;
    case "bg_scene_job.png":
      image(scene_job, 0, 0, width, height);
      break;
    case "bg_scene_job_lastchoice.png":
      image(scene_job_lastchoice, 0, 0, width, height);
      break;
    case "bg_scene_interview.png":
      image(scene_interview, 0, 0, width, height);
      break;
    case "bg_scene_letter.png":
      image(scene_letter, 0, 0, width, height);
      break;
    case "bg_scene_gang.png":
      image(scene_gang, 0, 0, width, height);
      break;
    case "bg_scene_mrpresident.png":
      image(scene_mrpresident, 0, 0, width, height);
      break;
    case "bg_color_black":
      background(0);
      break;
    case "bg_color_green":
      background(50, 190, 20);
      break;
    case "bg_color_red":
      background(190, 50, 20);
      break;
    
    default:
      println("Image is not registered. Was it spelled correctly?");
      break;
  }
  
  image(textbox, 0, 565, 1280, 155);
  
  // Line for when implementing buttons
  //image(textbutton, x, y, 660, 70);
  
  if (currentScene.lines.get(position).buttons) {
    for (int i = 0; i < currentScene.lines.get(position).newPos.size(); i++) {
      image(textbutton, 310, objectAreas.get(i)[1], 660, 70); 
    }
  }
  
}

// Handles the text
void textHandler() { //<>//
  
  fill(0);
  
  textSize(24);
  text(currentScene.lines.get(position).Person, 40, 600);
  
  textSize(14);
  text(currentScene.lines.get(position).Text, 40, 615, 1220, 85);
  
  if (currentScene.lines.get(position).buttons) {
    textSize(16);
    for (int i = 0; i < currentScene.lines.get(position).newPos.size(); i++) {
      text(currentScene.lines.get(position).buttonText.get(i), 340, 140+80*i);
    }
  }

}

// Handles the music
void musicHandler() { //<>//
  
  if (currentScene.lines.get(position).startMusic)
    backgroundMusic.loop();
    
  else if (currentScene.lines.get(position).stopMusic)
    backgroundMusic.pause();

}
