int steen1 = 6;
int steen2 = 6;
int steen3 = 6;
String resultaat = "damage";
int totaalDamage = 0;

if(steen1 == 1){
 println("mis!");
 
} else if(steen1 > 1){
  println("HIT!");
  totaalDamage = steen1 + totaalDamage;
} 

if(steen2 == 1){
 println("mis!");
} else if(steen2 > 1){
  println("HIT!");
  totaalDamage = steen2 + totaalDamage;
}

if(steen3 == 1){
 println("mis!");
} else if(steen3 > 1){
  println("HIT!");
  totaalDamage = steen3 + totaalDamage;
}


//dit gedeelte is voor de critical miss en de MEGA HIT.
if (steen1 < 2 && steen2 < 2 && steen3 < 2){
  println("Critical MISS!");
} else if (steen1 > 5 && steen2 > 5 && steen3 > 5){
println("MEGA HIT!");
}

print(resultaat);
print(" ");
print(totaalDamage);
