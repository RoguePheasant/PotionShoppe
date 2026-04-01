/*
Narrative:
  This Sketch is supposed to be a two-part store
  where the user can:
  - See the spirit-people shopping for various berries.
  - Make potions based on the three berries that are in the shop
  There is a back arrow button on the potions screen that allows the user
  to return to the front counter.
  There is a button with a bottle on it that allows the user to go the 
  potion screen
  
  There are three versions of spirit-people that have randomized speeds
  and random chance for a bubble to appear over their heads when an interesting berry
  is found, to make it seem like they are shopping

*/


void setup()
{
  size(1920,1080,P3D);
  loadPics();
  loadBerry();
  loadBottle();
  loadBucket();
  loadItems();
  load();
  fontLoading();
}

void draw()
{
  if(mousePressed==true)
  {
    println(pmouseX,pmouseY);
  }
  else{}
  if(scene==1)
  {
    shopCounter();
  }
  else if(scene==2)
  {
    potionMaking();
  }
  else if(scene==3)
  {
    infoScene();
  }
  else{}


}
