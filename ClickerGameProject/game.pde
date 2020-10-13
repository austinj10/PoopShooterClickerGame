void game(){
  gameovertheme.pause();
  introgametheme.play();
  background(#DDCAAA);//cream
  
//text score or lives
  textFont(entreaty);
  textSize(75);
  text("Score:" + score, 100,25);
  text("Lives:" + lives, 700,25);
  
//pause button(**MAKE IT TACTILE**) 
  //invisible tactile button
  strokeWeight(0);
  fill(#DDCAAA);
  rect(25,520,55,55,5);
  //two rects
  fill(255);
  rect(25,520,10,55,5);
  rect(70,520,10,55,5);
  
  
//display poop target
  poopOnOff();

//moving
  x = x + vx;
  y = y + vy;

//bouncing
  if ( x < 0 || x > 700){ //|| is above enter key
    vx = vx * -1; 
  }
  if (y < 0 || y > 500){
    vy = vy * -1;
  }
}


 
void gameClicks(){
  if (dist(mouseX,mouseY,x-50 + poopthickness,y-50 + poopthickness) < poopthickness - 50){
    vx = vx * 1.05;
    vy = vy * 1.05;
    score = score + 1;
    highscores = highscore + 1;
    shoottheme.rewind();
    shoottheme.play();
  } else if (score > highscore){
    highscore = score;
  } else if (mouseX > 25 && mouseX < 75 && mouseY > 520 && mouseY < 575){
    mode = pause;
  } else {
    lives = lives - 1;
    misstheme.rewind();
    misstheme.play();
    if (lives == 0) mode = gameover;  
  }
}
