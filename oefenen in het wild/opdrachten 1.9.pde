int speler1Score = 30;
int speler2Score = 30;
int gelijkspel = 0;

gelijkspel = speler1Score + speler2Score;

if (gelijkspel == 60){
  println("gelijkspel");

} else if (speler1Score == 30){
  println("Speler 1 heeft gewonnen");

} else if(speler2Score == 30){
  println("Speler 2 heeft gewonnen");

}
