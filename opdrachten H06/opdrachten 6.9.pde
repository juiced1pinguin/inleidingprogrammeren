float cijfer = 6;
float cijfer2 = 7;
boolean diploma = false;
boolean vrijstelling = false;
boolean cumlaude = false;

if (cijfer >= 5.5 && cijfer2 >= 5.5) {
  diploma = true;
}

if (cijfer >= 8) {
  cumlaude = true;
  diploma = false;
}

if (diploma || vrijstelling) {
  println("Gefeliciteerd");
}

if(cumlaude){
  println("cumlaude geslaagd");
}

if(!diploma && !vrijstelling && !cumlaude){
  println("je hebt gefaald");
}
