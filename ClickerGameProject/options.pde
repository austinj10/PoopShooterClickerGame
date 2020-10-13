void options(){
  background(#BC8542);
  
  //text
  fill(255);
  textFont(entreaty);
  textSize(110);
  text("Options",400,75);
  
  //back
  pushMatrix();
  backtactile(755,555,45);
  circle(755,555,90);
  image(back,710,510,90,90);
  popMatrix();
  
  //slider
  stroke(255);
  strokeWeight(10);
  fill(255);
  line(100,460,600,460);
  slidertactile(75,430,545,55);
  circle(sliderX,460,50);
   
  
  //poop
  strokeWeight(3);
  pooptactile(100,200,150,150);
  rect(100,200,150,150);
  image(poop,100,200,150,150);
  
  //poop2
  poop2tactile(325,200,150,150);
  rect(325,200,150,150);
  image(poop2,325,200,150,150);
  
  //poop3
  poop3tactile(550,200,150,150);
  rect(550,200,150,150);
  image(poop3,550,200,150,150);
}



void optionsClicks(){
  if (mouseX > 710 && mouseX < 800 && mouseY > 510 && mouseY < 600){
    mode = intro;
  }
}
