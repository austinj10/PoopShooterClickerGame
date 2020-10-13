void gameover(){
  introgametheme.pause();
  gameovertheme.play();
  background(#6E3722);
  
  //gameover text
  fill(0);
  textFont(entreaty);
  textSize(150);
  text("GAME OVER",400,100);
  
  //highscore text
  textSize(100);
  text("High Score:" + highscore, 400,500);
  
  //exit button
  image(exit,700,500,100,100);
  
}



void gameoverClicks(){
  reset();
  mode = intro;
  if (mouseX > 700 && mouseX < 800 && mouseY > 500 && mouseY < 600){
    exit();
  }
}



void reset(){
  //poop
  image(poop,x,y,d,d);
  x = width/2;
  y = height/2;
  d = 100;
  vx = 3;
  vy = 5;
  
  //game initialiazation
  score = 0;
  lives = 5;
  highscores = 0;
}
