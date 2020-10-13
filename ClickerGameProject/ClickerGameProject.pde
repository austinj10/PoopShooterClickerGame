//Austin Jeon
//Block 1-1B
//Oct 6, 2020

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//sound variables
Minim minim; 
AudioPlayer introgametheme,shoottheme,misstheme,gameovertheme;


//mode variables
int mode;
final int intro    = 0;//final = locked in forever
final int game     = 1;
final int pause    = 2;
final int gameover = 3;
final int options  = 4;

//target variables
float x, y, d;  
float vx, vy; //target vlocities
int score;
int lives;
int highscore;
int highscores;

//colour pallette

PFont entreaty;

PImage poop;
PImage poop2;
PImage poop3;
PImage settings;
PImage back;
PImage exit;

float sliderX;
float poopthickness;

boolean poopOn;
boolean poop2On;
boolean poop3On;

void setup(){
  size(800,600,P2D);
  mode = intro;
  textAlign(CENTER,CENTER);
  entreaty = createFont("Father's Entreaty - Personal Use.ttf",100);
  poop = loadImage("poop.png");
  poop2 = loadImage("poop2.png");
  poop3 = loadImage("poop3.png");
  settings = loadImage("settings.png");
  back = loadImage("back.png");
  exit = loadImage("exit.png");
  sliderX = 350;
  poopOn = true;
  poop2On = false;
  poop3On = false;
  
//target initialization
  x = width/2;//for center and auto adapts to change
  y = height/2;//for center and auto adapts to change
  d = 100;
  vx = 3;//also can do random (between number _ and _) for example: random(-5,5);
  vy = 5;//also can do random (between number _ and _) for example: random(-5,5);
  score = 0;
  lives = 5;
  highscore = 0;
  highscores = highscore;

//minim
  minim = new Minim(this);
  introgametheme = minim.loadFile("hyperfun.mp3");
  shoottheme = minim.loadFile("fart-01.mp3");
  misstheme = minim.loadFile("fart-02.mp3");
  gameovertheme = minim.loadFile("retrofuture.mp3");

//reset
  reset();
  
//poop size
  poopthickness = map(sliderX,100,600,50,200);
  
}



void draw(){
  
  
  if (mode == intro){
    intro();
  } else if (mode == game){
    game();
  } else if (mode == pause){
    pause();
  } else if (mode == gameover){
    gameover();
  } else if (mode == options){
    options();
  } else {
    println("Error: Mode = " + mode);//print line (use L)
  }
}
