boolean gevonden;
String[] personen = {"pietje", "jan", "klaas", "henry"};

void setup(){
  gevonden = false;
  for(int u = 0; u < personen.length; u++){
    //kijkt of jan bestaat
    if(personen[u] == "jan"){
      gevonden = true;
    }
    
  }
  
  println(gevonden);
  
}
