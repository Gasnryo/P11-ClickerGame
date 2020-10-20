void pause() {
   
  fill(0);
  stroke(0);
  strokeWeight(5);
  circle(width, height, 200);
  
  fill(255);
  noStroke();
  triangle(1550, 825, 1585, 855, 1550, 885);
  
  //PAUSED image
  image(PAUSED, 100, 300, 1400, 362);
}

void pauseClicks() {
  if (dist(mouseX, mouseY, width, height) < 100) {
    theme.play();
    mode = GAME;
  }
}
