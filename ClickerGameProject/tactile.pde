void controlSlider(){
  if (mouseX > 100 && mouseX < 600 && mouseY > 435 && mouseY < 485){
  sliderX = mouseX;
  }  
}

void texttactile(int x,int y,int w,int h){
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
    fill(30);
    textSize(100);
  } else {
    textSize(100);
  }
}

void optionstactile(int x, int y, int r){ 
  if (dist(x,y,mouseX,mouseY) < r){
    stroke(255);
    strokeWeight(5);
  } else {
    strokeWeight(0);
    fill(#BC8542);
  }
}

void backtactile(int x, int y, int r){ 
  if (dist(x,y,mouseX,mouseY) < r){
    stroke(0);
    strokeWeight(5);
  } else {
    fill(255);
    strokeWeight(0);
  }
}

void slidertactile(int x,int y,int w,int h){
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
    fill(85,15,15);
    poopthickness = map(sliderX,100,600,100,200);
  } else {
    fill(250,175,175);
  }
}

void pooptactile(int x,int y,int w,int h){
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
    fill(#8BB0C8);
    poopOn = true;
    poop2On = false;
    poop3On = false;
  } else {
    fill(#311F04);
  }
}

void poop2tactile(int x,int y,int w,int h){
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
    fill(#8BB0C8);
    poopOn = false;
    poop2On = true;
    poop3On = false;
  } else {
    fill(#311F04);
  }
}

void poop3tactile(int x,int y,int w,int h){
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
    fill(#8BB0C8);
    poopOn = false;
    poop2On = false;
    poop3On = true;
  } else {
    fill(#311F04);
  }
}

void exittactile(int x,int y,int w,int h){
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
    fill(50);
  } else {
    fill(#6E3722);
  }
}

void pausetactile(int x,int y,int w,int h){
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h){
    fill(#DDCAAA);
  } else {
    fill(255);
  }
}
