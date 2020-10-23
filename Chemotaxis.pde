  
Bacteria[] bob = new Bacteria[100];
 void setup()   
 {     
   size(300,300);
   background(255);
   frameRate(60);
   for(int i = 0; i < bob.length; i++){
     bob[i] = new Bacteria();
   }
   
 }   
 void draw()   
 {    

   background(255);
     for(int a = 0; a < 100; a++){
       bob[a].show();
       bob[a].move();
     }
 }  
 void mousePressed()
 {
   
   redraw();
 }
 
 class Bacteria    
 {     
   int myX;
   int myY;
   int mySize;
   int myMove;
   int myColor;
   Bacteria()
   {
     myX = (int)(Math.random()*50)+125;
     myY = (int)(Math.random()*50)+125;
     mySize = 10;
     myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 
   }
   void show()
   {
     fill(myColor);
     ellipse(myX,myY,mySize,mySize);
  
   }
   void move()
   {
     if(myX<290 && myX>10){
       myX = myX + (int)(Math.random()*3)-1;
     }
     if(myY<290&&myY>10){
       myY = myY + (int)(Math.random()*3)-1;
     }
     
   }
   
 }
