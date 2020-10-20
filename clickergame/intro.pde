void intro() {
  theme.play();
  x = width/2;
  y = height/2;
  d = 200;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  lives = 3;

  //TITLE
  image(background, 0, 0, 1600, 900);
  imageMode(CENTER);
  image (title, width/2, height*0.3, 1400, 553);
  imageMode(CORNER);
  
  //Settings
  noFill();
  
  tactileCircle(1504, 810, 50);
  strokeWeight(3);
  circle(1504, 810, 101);
  gear(gear);

  //START
  //rectMode(CENTER);
  //rect(width/2, height*0.7, 200, 100);
  //rectMode(CORNER);
  textSize(50);
  fill(0);
  text("Press any key to continue", width*0.498, textY);
  textSize(50);
  fill(255, 255, 0);
  text("Press any key to continue", width/2, textY);
  
  
  //Quit utton
  tacR(width/2-100, height*0.9-50, width/2+100, height*0.9+50);
  strokeWeight(5);
  fill(255, 0, 0);
  rectMode(CENTER);
  rect(width/2, height*0.9, 200, 100);
  fill(0);
  textSize(70);
  text("QUIT", width/2, height*0.895);
  
  //Press key to play text
  if (textY > 630) {
    textY = textY - 20;
  } else { 
    textY = 630;
  }

  //Start game
  if (keyPressed) {
    mode = 1;
  }
}



void introClicks() {
  //Options button
  if (dist(1504, 810, mouseX, mouseY) < 51 ) {
    mode = 4;
  }
  
  //Exit button
  if (mouseX > 700 && mouseX < 900 && mouseY > 760 && mouseY < 860) {
   exit(); 
  }
}
