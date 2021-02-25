public void settings() {
  size(600,600);
}

public void setup() {
  ellipseMode(CENTER); 
  myFractal(300,300,300);
}

public void myFractal(int x, int y, int siz) {
 fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  ellipse(x,y,siz,siz);
  if(siz > 10) {
    myFractal(x-siz/2,y,siz/3);
    myFractal(x+siz/2,y,siz/3);
    myFractal(x,y-siz/2,siz/3);
    myFractal(x,y+siz/2,siz/3);
  }
}
