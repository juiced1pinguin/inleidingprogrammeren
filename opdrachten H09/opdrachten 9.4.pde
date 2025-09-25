void setup(){
  size(400,400);
  ohno(100,100, 100, 300);
  ohno(100,100, 300, 100);
  ohno(300,100, 300, 300);
  ohno(100,300, 300, 300);
}

void draw(){

}

void ohno(int a, int b, int c, int d){
  line(a,b,c,d);
}
