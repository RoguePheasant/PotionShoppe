/*
  Spirit class is used to control the movements of the spirit-beings who are "shopping" when user views the shopCounter Scene

*/

class Spirits
{

  
  int spSpeedX;
  int mili; //used for time
  int div=8;
  
  
  // || SECOND SPECIFIC VARIABLES || \\
 // 2 Second   \\
  float x2=250;
  float y2;
  float d2;
  float s2;
  int sec2;
  boolean run2=false;
  boolean move2=true;
  int pic;
  int popUp;
  int height2;

  //Constructor
  Spirits(int choice,int speedx,int dirx, int hei)
  {
    pic=choice;
    s2=speedx;
    d2=dirx;
    height2=hei;
  }
  
  
        // || SECOND SPECIFIC METHODS || \\
// 2 Second Method \\
  void wait2()
  {
    imageMode(CENTER);
    if(run2==true)
    {
      
      mili=millis();
      sec2=millis()/1000;
      if(popUp%2==0 && pic==1)
        {
          image(bub,x2,(height/2)-175);
        }
        else if(popUp%2==0 && pic==2)
        {
          image(bub,x2,339-175);
        }
        else if(popUp%2==0 && pic==3)
        {
          image(bub,x2,251-175);
        }
        else{}
      if(sec2%div==0)
      {
        d2=-d2;
        div=int(random(3,6));
        move2=true;
        run2=false;
        popUp=int(random(1,4));
        
      }
      else{}
    }
    else{}
  }
  
  void moves2()
  {
    imageMode(CENTER);
    if(move2==true)
    {
      x2+=d2*s2;
      if(x2<=250 || x2>=1670)
      {
        
        x2+=0;
        run2=true;
        move2=false;
      }
      else{}
    }
    else{}
    if(pic==1 && d2==1)
    { 
      image(sp1,x2,height/2);
    }
    else if(pic==1 && d2==-1)
    {
      image(sp1Back,x2,height/2);
    }
    else if(pic==2 && d2==1)
    {
      image(sp2,x2,339);
    }
    else if(pic==2 && d2==-1)
    {
      image(sp2Back,x2,339);
    }
    else if(pic==3 && d2==1)
    {
      image(sp3,x2,251);
    }
    else if(pic==3 && d2==-1)
    {
      image(sp3Back,x2,251);
    }
    else{}
    
  }


























// end of class
}
