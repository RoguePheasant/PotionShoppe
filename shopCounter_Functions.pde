/*
  This script is purely to keep all the functions for shopCounter organized and how what is used when it comes to setting up
  the front counter of the shop.

*/

void shopCounter() // Function to call aspects of the shopCounter scene in draw
{
  imageMode(CORNERS);
  image(storeBack,0,0);
  Sp1.wait2();
  Sp1.moves2();
  Sp2.wait2();
  Sp2.moves2();
  Sp3.wait2();
  Sp3.moves2();
  imageMode(CORNERS);
  infoButton();
  image(table,0,height-447);
  image(potionButton,1675,height-200);
  image(infoButton,150,height-200);
  potionButton();
  infoButton();
  
}
void loadPics()// Function used to load in all images used for the shopCounter scene
{
  // Spirit being 1
  sp1=loadImage("sp1.png");
  sp1.resize(100,300);
  sp1Back=loadImage("sp1Back.png");
  sp1Back.resize(100,300);
  
  // Spirit being 2
  sp2=loadImage("sp2.png");
  sp2.resize(100,300);
  sp2Back=loadImage("sp2Back.png");
  sp2Back.resize(100,300);
  
  // Spitit being 3
  sp3=loadImage("sp3.png");
  sp3.resize(100,300);
  sp3Back=loadImage("sp3Back.png");
  sp3Back.resize(100,300);
  
  //Interest bubble
  bub=loadImage("bubble.png");
  
  //Background images
  storeBack=loadImage("store.png");
  table=loadImage("table.png");//table seperate to allow spirit beings so be covered by it instead of overlapping it
  
  //Button
  potionButton=loadImage("potionButton.png");
  potionButton.resize(100,100);
  infoButton=loadImage("infoButton.png");
  infoButton.resize(100,100);
}

void potionButton() // Function used to change to potion making scene
{
  if(mousePressed==true && scene==1 && pmouseX<=1774 && pmouseX>=1674 && pmouseY<=959 && pmouseY>=858)
  {
    scene=2;
  }
  else{}
}

void infoButton()
{
  if(mousePressed==true && pmouseX<=250 && pmouseX>=150 && pmouseY<=959 && pmouseY>=858)
  {
    scene=3;
  }
  else{}

}
