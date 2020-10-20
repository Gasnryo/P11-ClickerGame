import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Grayson Lilly
//1-2

//Font
PFont school;

//Mode Variables
int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

//Game Variables
float x, y, d;
float vx, vy; //target velocity
int score, lives, highscore;
int target;
boolean hardmode;
float sliderX;
int alpha;

//intro variables
int textY;
float rotation;

//sound variables
Minim minim;
AudioPlayer theme, coin, bump, gameover, scratch;

//Images
PImage PAUSED;
PImage healthyheart;
PImage deadheart;
PImage background;
PImage farzat;
PImage title;
PImage gear;
PImage whitegear;
PImage optionsbg;
PImage william;
PImage gameoverimg;
PImage tryagain;

//color
color tactstolenfromwilliam = #FFD767;
color pink = #F21D41;

void setup() {
  size(1600, 900);
  textAlign(CENTER, CENTER);
  //rectMode(CENTER);
  mode = 0; //intro
  rotation = 0;

  //Images and font
  PAUSED = loadImage("paused.png");
  healthyheart = loadImage("healthyheart.png");
  deadheart = loadImage("deadheart.png");
  background = loadImage("background.png");
  farzat = loadImage("farzat.png");
  william = loadImage("william.png");
  title = loadImage("titlescreen.png");
  gear = loadImage("gear.png");
  whitegear = loadImage("whitegear.png");
  optionsbg = loadImage("optionsbackground.jpg");
  gameoverimg = loadImage("gameover.png");
  tryagain = loadImage("tryagain.png");
  school = createFont("BabySchoolItalic.ttf", 60);
  textFont(school);

  //Target Setup
  x = width/2;
  y = height/2;
  d = 200;
  vx = random(-5, 5);
  vy = random(-5, 5);
  score = 0;
  highscore = 0;
  lives = 3;
  textY=1500;
  target = 1;
  hardmode = false;
  sliderX = width*0.15;
  


  //minim
  minim = new Minim(this);
  theme = minim.loadFile("theme.mp3");
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
  scratch = minim.loadFile("scratch.mp3");
}

void draw() {

  if (mode == 0) {

    intro();
  } else if (mode == 1) {
    game();
  } else if (mode == 2) {
    pause();
  } else if (mode == 3) {
    gameover();
  } else if (mode == 4) {
    options();
  } else {
    println("Error: Mode = " +mode);
  }
}
