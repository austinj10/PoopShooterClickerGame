void intro(){
  gameovertheme.pause();
  introgametheme.play();
  
  background(#BC8542);//mediumbrown
  
  //settings button
  optionstactile(750,550,45);
  circle(750,550,90);
  image(settings,690,490,120,120);
  
  //poop
  pushMatrix();
  translate(400,300); 
  image(poop,-50,-90,100,100);
  rotate(8);
  image(poop2,130,100,100,100);//x,y,width,height
  rotate(8);
  image(poop2,100,100,100,100);
  rotate(8);
  image(poop3,100,100,100,100);
  rotate(8);
  image(poop,180,100,100,100);
  rotate(8);
  image(poop3,80,140,100,100);
  rotate(8);
  image(poop,100,100,100,100);
  rotate(8);
  image(poop2,150,100,100,100);
  rotate(8);
  image(poop3,130,150,100,100);
  popMatrix();
  
  //**MAKE IT TACTILE**
  //text
  textFont(entreaty);
  //invis rect
  strokeWeight(0);
  fill(#BC8542);
  rect(315,415,185,100);
  //text
  fill(255);
  textSize(150);
  text("Poop Shooter",400,100);
  texttactile(315,415,185,100);void intro(){
  gameovertheme.pause();
  introgametheme.play();
  
  background(#BC8542);//mediumbrown
  
  //settings button
  optionstactile(750,550,45);
  circle(750,550,90);
  image(settings,690,490,120,120);
  
  //poop
  pushMatrix();
  translate(400,300); 
  image(poop,-50,-90,100,100);
  rotate(8);
  image(poop2,130,100,100,100);//x,y,width,height
  rotate(8);
  image(poop2,100,100,100,100);
  rotate(8);
  image(poop3,100,100,100,100);
  rotate(8);
  image(poop,180,100,100,100);
  rotate(8);
  image(poop3,80,140,100,100);
  rotate(8);
  image(poop,100,100,100,100);
  rotate(8);
  image(poop2,150,100,100,100);
  rotate(8);
  image(poop3,130,150,100,100);
  popMatrix();
  
  //text
  textFont(entreaty);
  //invis rect
  strokeWeight(0);
  fill(#BC8542);
  rect(315,415,185,100);
  //text
  fill(255);
  textSize(150);
  text("Poop Shooter",400,100);
  texttactile(315,415,185,100);
  text("Start",400,450);
  
}



void introClicks(){
  if (mouseX > 315 && mouseX < 500 && mouseY > 415 && mouseY < 515){
    mode = game;
  } else if (mouseX > 700 && mouseX < 800 && mouseY > 500 && mouseY < 600){
    mode = options;
  }
}
  text("Start",400,450);
  
}



void introClicks(){
  if (mouseX > 315 && mouseX < 500 && mouseY > 415 && mouseY < 515){
    mode = game;
  } else if (mouseX > 700 && mouseX < 800 && mouseY > 500 && mouseY < 600){
    mode = options;
  }
}
