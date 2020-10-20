void options() {
  //Background
  println (hardmode);
  image(optionsbg, 0, 0, 1600, 900);
  //Intro
  tactileCircle(1504, 810, 50);
  strokeWeight(3);
  noFill();
  circle(1504, 810, 101);
  gear(whitegear);
 d = map(sliderX, 160, 480, 75, 575);

  //Targets
  //target1
  imageMode(CENTER);
  strokeWeight(15);
  tactileCircle(width*0.2, height*0.3, 100);
  if (target == 1) stroke (255, 0, 0);
  fill(255, 255, 0);
  circle(width*0.2, height*0.3, 200);

  stroke(0);
  fill(255);
  strokeWeight(1);
  circle(width*0.2, height*0.3, 200*0.8);

  fill(0, 255, 255);
  circle(width*0.2, height*0.3, 200*0.6);

  fill(255, 0, 0);
  circle(width*0.2, height*0.3, 200*0.4);

  fill(255, 255, 0);
  circle(width*0.2, height*0.3, 200*0.2);



  //circle(width*0.8, height*0.3, 300);

  //Target2
  strokeWeight(19);
  imageMode(CENTER);
  stroke(5);
  tactileCircle(width*0.5, height*0.3, 100);
  if (target == 2) stroke (255, 0, 0);
  circle(width*0.5, height*0.3, 200);
  image(farzat, width*0.5, height*0.3, 200, 200);
  imageMode(CORNER);

  //target3
  strokeWeight(19);
  imageMode(CENTER);
  stroke(5);
  tactileCircle(width*0.8, height*0.3, 100);
  if (target == 3) stroke (255, 0, 0);
  circle(width*0.8, height*0.3, 200);
  image(william, width*0.8, height*0.3, 200, 200);
  imageMode(CORNER);

  //Hardmode
  tacR(700, 570, 900, 690);
  rectMode(CENTER);
  strokeWeight(3);
  if (hardmode == true) {
     fill(255, 0, 0);
    rect(width/2, height*0.7, 200, 100);
    fill(0);
    text("HARD", width/2, height*0.675);

  } else if (hardmode == false) {
    fill (0, 255, 0); 
    rect(width/2, height*0.7, 200, 100);
    fill(0);
    text("EASY", width/2, height*0.675);
    
  }
  
  fill(0);
  
  text("MODE", width/2, height*0.72);
  rectMode(CORNER);
  
  fill (pink);
  stroke(pink);
  strokeWeight(4);
  line(width*0.1, height*0.7, width*0.3, height*0.7);
  strokeWeight(4);
  tactileCircle(sliderX, height*0.7, 25);
  circle(sliderX, height*0.7, 50);

stroke(0);
if (target == 1) {
target1(width*0.75, height*0.73, d);
} else if (target == 2) {
 target2(width*0.75, height*0.73, d); 
} else if (target == 3) {
 target3(width*0.75, height*0.73, d); 
}
  //circle(width*0.8, height*0.3, 300);
}

void optionsClicks() {
 controlSlider();
  
  
  if (mouseX > 700 && mouseX < 900 && mouseY > 570 && mouseY < 690) {
    if (hardmode==true) {
      hardmode=false;
    } else
      hardmode=true;
  }


  if (dist(1504, 810, mouseX, mouseY) < 51 ) {
    mode = 0;
  }
  if (dist(width*0.2, height*0.3, mouseX, mouseY) < 100 ) {
    target = 1;
  }
  if (dist(width*0.5, height*0.3, mouseX, mouseY) < 100 ) {
    target = 2;
  }
  if (dist(width*0.8, height*0.3, mouseX, mouseY) < 100 ) {
    target = 3;
  }
}

void optionsDrag() {
    controlSlider();
  }
