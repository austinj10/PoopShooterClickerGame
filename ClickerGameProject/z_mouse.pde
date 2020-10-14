void mouseReleased(){
  controlSlider();
  
   if (mode == intro){
    introClicks();
  } else if (mode == game){
    gameClicks();
  } else if (mode == pause){
    pauseClicks();
  } else if (mode == gameover){
    gameoverClicks();
  } else if (mode == options){
    optionsClicks();
  }
}

  //poop buttons
  {if (mouseX > 100 && mouseX < 250 && mouseY > 200 && mouseY < 350){ 
    poopOn = true;
    poop2On = false;
    poop3On = false;
  } else if (mouseX > 325 && mouseX < 375 && mouseY > 200 && mouseY < 350){
    poop2On = true;
    poopOn = false;
    poop3On = false;
  } else if (mouseX > 550 && mouseX < 700 && mouseY > 200 && mouseY < 350){
    poop3On = true;
    poopOn = false;
    poop2On = false;}
  }
  
void mouseDragged(){
  controlSlider();
}

void poopOnOff(){
  if (poopOn == true){
   image(poop,x,y,poopthickness,poopthickness);
   poop2On = false;
   poop3On = false;
  } else if (poop2On == true){
    image(poop2,x,y,poopthickness,poopthickness);
    poopOn = false;
    poop3On = false;
  } else if (poop3On == true){
    image(poop3,x,y,poopthickness,poopthickness);
    poopOn = false;
    poop2On = false;
  }
}

void OptionspoopOnOff(){
  if (poopOn == true){
   image(poop,600,0,poopthickness,poopthickness);
   poop2On = false;
   poop3On = false;
  } else if (poop2On == true){
    image(poop2,600,0,poopthickness,poopthickness);
    poopOn = false;
    poop3On = false;
  } else if (poop3On == true){
    image(poop3,600,0,poopthickness,poopthickness);
    poopOn = false;
    poop2On = false;
  }
}
