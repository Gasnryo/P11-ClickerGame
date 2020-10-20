void game() {
  //background(0, 255, 0);
  image(background, 0, 0, 1600, 900);
 d = map(sliderX, 160, 480, 75, 575);
  textSize(60);
  textFont(school);
  fill(0, 255, 0);
  textAlign(LEFT, LEFT);
  text(score, width/64, 60);
  textAlign(CENTER, CENTER);


  //pause
  fill(0);
  circle(width, height, 200);
  fill(255);
  noStroke();
  rectMode(CORNER);
  rect(1535, 835, 10, 50);
  rect(1560, 835, 10, 50);
  rectMode(CENTER);

  //LIVES
  if (lives == 3) {
    image(healthyheart, width*0.93, 20, 100, 100);
    image(healthyheart, width*0.87, 20, 100, 100);
    image(healthyheart, width*0.81, 20, 100, 100);
  } else if (lives == 2) {
    image(deadheart, width*0.93, 20, 100, 100);
    image(healthyheart, width*0.87, 20, 100, 100);
    image(healthyheart, width*0.81, 20, 100, 100);
  } else if (lives == 1) {
    image(deadheart, width*0.93, 20, 100, 100);
    image(deadheart, width*0.87, 20, 100, 100);
    image(healthyheart, width*0.81, 20, 100, 100);
  }


  //display target
  fill(255, 255, 0);
  stroke(0);
  strokeWeight(5);
  if (target == 1) {
    target1(x, y, d);
  } else if (target == 2) {
    target2(x, y, d);
  } else if (target == 3) {
    target3(x, y, d);
  }
  
  //Highscore
  if (score > highscore) {
   highscore = score;
  }
  println(highscore);
  //circle(x, y, d);

  //move target
  x = x + vx;
  y = y + vy;

  //bouncing
  if (x < d/2 || x > width-d/2) {
    vx = vx * -1;
  }
  if (y < d/2 || y > height-d/2) {
    vy = vy * -1;
  }
} // end game

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
    if (hardmode == true) {
      x=random(width*0.15, width*0.85);
      y=random(width*0.15, height*0.85);
      vx = vx*-1;
      vy = vy*-1;
    }
    //Acceleration
    
    if (vx < 10 && vx > -10) { 
      vx = vx*1.1;
      vy = vy*1.1;
    }

    coin.rewind();
    coin.play();
  } else if (dist(mouseX, mouseY, width, height) < 100) {
    theme.pause();
    scratch.rewind();
    scratch.play();
    fill (150, 100);
    noStroke();
    rectMode(CORNER);
    rect (0, 0, width, height);
    rectMode(CENTER);
    mode = PAUSE;
  } else {
    lives = lives - 1;
    bump.rewind();
    bump.play();
    if (lives == 0) {
      gameover.rewind();
      alpha = 400;
      mode = 3;
    }
  }
}
