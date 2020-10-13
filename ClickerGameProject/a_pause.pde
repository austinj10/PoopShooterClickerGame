void pause(){
  introgametheme.pause();
  
  //play button
  //invisible rect
  strokeWeight(0);
  fill(#DDCAAA);
  rect(25,520,55,55,5);
  //play
  fill(255);
  strokeWeight(10);
  stroke(255);
  strokeJoin(ROUND);
  triangle(25,520,25,575,80,547);
  
  //Pause text
  textFont(entreaty);
  textSize(200);
  text("Pause",400,250);
}



void pauseClicks(){
  if (mouseX > 25 && mouseX < 75 && mouseY > 520 && mouseY < 575){
    mode = game;
  }
} 
