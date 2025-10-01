class persoon{
  String naam;
  int leeftijd;
  String geslacht;
  
  persoon(String naam, int leeftijd, String geslacht){
    this.naam = naam;
    this.leeftijd = leeftijd;
    this.geslacht = geslacht;
  }
}

void setup(){
  persoon mypersoon = new persoon("henry", 17, "man");
  println("naam: " + mypersoon.naam);
  println("leeftijd: " + mypersoon.leeftijd);
  println("geslacht: " + mypersoon.geslacht);
}
