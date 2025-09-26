int hoeveel = 0;
int specifiekaantalgetal = 8;
int[] personen = {8,9,3,4,2,5,6,7,4,3,5,4,8,6,3,8,9,4,3,6,7,2,4,9,8,5,6,9,3,4,2,5,6,8,3};

void setup(){
  for(int u = 0; u < personen.length; u++){
    //kijkt of jan bestaat
    if(personen[u] == specifiekaantalgetal){
      hoeveel++;
    }
    
  }
  
  println(hoeveel);
  
}
