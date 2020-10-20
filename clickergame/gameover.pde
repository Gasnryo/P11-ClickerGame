void gameover() {
  theme.pause();
  gameover.play();
  background (100);
  
  imageMode(CENTER);
  image(gameoverimg, width/2, height*.4);
  image (tryagain, width/2, height*.6, 800, 136);
  imageMode(CORNER);
  fill(100, alpha);
  noStroke();
  rect(width/2, height*.6, 800, 136);
  alpha = alpha - 2;
  
  //Play again
  tacR(width*0.3-100, height*0.9-50, width*0.3+100, height*0.9+50);
  strokeWeight(5);
  fill(255, 0, 0);
  rectMode(CENTER);
  rect(width*0.3, height*0.9, 200, 100);
  fill(0);
  textSize(50);
  text("REPLAY", width*0.3, height*0.895);
  
  
  //Quit
  tacR(width*0.7-100, height*0.9-50, width*0.7+100, height*0.9+50);
  strokeWeight(5);
  fill(255, 0, 0);
  rectMode(CENTER);
  rect(width*0.7, height*0.9, 200, 100);
  fill(0);
  textSize(70);
  text("QUIT", width*0.7, height*0.895);
  
  fill(0, 255, 0);
  text("High Score: " +highscore, width/2, height*0.7);
  
}



void gameoverClicks() {
  
  //replay
  if (mouseX > width*0.3-100 && mouseX < width*0.3+100 && mouseY > height*0.9-50 && mouseY < height*0.9+50) {
   mode = 0; 
  }
  
  
  //EXIT
  if (mouseX > width*0.7-100 && mouseX < width*0.7+100 && mouseY > height*0.9-50 && mouseY < height*0.9+50) {
   exit(); 
  }
  
}
