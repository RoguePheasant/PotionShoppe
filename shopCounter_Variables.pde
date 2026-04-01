/*
  This script is purely to keep all the variables for makingPotions organized and how what is used when it comes to setting up
  the makingPotions Scene

*/


PImage sp1; // Spirit being one facing right
PImage sp1Back;//Spirit being one facing left
PImage sp2; // Spirit being two facing right
PImage sp2Back;//Spirit being two facing left
PImage sp3; // Spirit being three facing right
PImage sp3Back;//Spirit being three facing left
PImage bub; //Bubble to show intrest in item
PImage storeBack;//background
PImage table; //Used to make it seem like spirit-people are behind the counter
PImage potionButton;//used to trigger change of scenes
PImage infoButton;

// Call to spirit beings
Spirits Sp1=new Spirits(1,1,1,height/2+100);
Spirits Sp2=new Spirits(2,2,1,339);
Spirits Sp3=new Spirits(3,3,1,251);
