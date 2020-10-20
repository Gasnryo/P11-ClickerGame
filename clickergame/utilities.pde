void target1(float x, float y, float d) {

  fill(255, 255, 0);
  circle(x, y, d);

  fill(255);
  strokeWeight(1);
  circle(x, y, d*0.8);

  fill(0, 255, 255);
  circle(x, y, d*0.6);

  fill(255, 0, 0);
  circle(x, y, d*0.4);

  fill(255, 255, 0);
  circle(x, y, d*0.2);
}

void target2(float x, float y, float d) {
  fill(255);
  circle(x, y, d);
  imageMode(CENTER);
  image(farzat, x, y, d, d);
  imageMode(CORNER);
}

void target3(float x, float y, float d) {
  fill(255);
  circle(x, y, d);
  imageMode(CENTER);
  image(william, x, y, d, d);
  imageMode(CORNER);
}

void gear(PImage i) {
  rotation=rotation+0.03;
  imageMode(CENTER);
  pushMatrix();
  translate(width*0.94, height*0.9);
  //fill(0, 255, 0);
  noFill();
  stroke(255);
  
  rotate(rotation);
  image(i, 0, 0, 100, 100);
  popMatrix(); 
  imageMode(CORNER);
}




void tactileCircle (float x, float y, float r) {
  if (dist(x,y,mouseX,mouseY) < r) { 
    stroke(tactstolenfromwilliam);
  } else {
    stroke(0);
  }
}

void tacR (float x, float y, float x2, float y2) {
  if (mouseX > x && mouseX < x2 && mouseY > y && mouseY < y2) {
    stroke(tactstolenfromwilliam);
  } else {
    stroke (0);
  }
}

void controlSlider() {
   if (mouseX > width*0.1 && mouseX < width*0.3 && mouseY > height*0.7-25 && mouseY < height*0.7+25) {
  sliderX = mouseX;
  } 
  
  
}
