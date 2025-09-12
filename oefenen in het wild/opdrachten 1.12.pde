float cijfer = 5.5;
int klassen = 16;
int geslaagdjan = 0;
int geslaagdklaas = 0;

//student Jan
if(7 > cijfer){
  println("het cijfer van jan is hoog genoeg"); geslaagdjan = geslaagdjan + 1;
} else {println("het cijfer van jan was niet hoog genoeg");}

if (17 > klassen){
  println("jan was er vaak genoeg"); geslaagdjan = geslaagdjan + 1;
}else {println("jan was er niet vaak genoeg");}

if (geslaagdjan == 2){
  println("Jan is GESLAAGD"); 
}
println(" ");

//student Klaas
if(5.5 >= cijfer){
  println("het cijfer van Klaas is hoog genoeg"); geslaagdklaas = geslaagdklaas + 1;
} else {println("het cijfer van Klaas was niet hoog genoeg");}

if (16 >= klassen){
  println("Klaas was er vaak genoeg"); geslaagdklaas = geslaagdklaas + 1;
}else {println("Klaas was er niet vaak genoeg");}

if (geslaagdklaas == 2){
  println("Klaas is GESLAAGD"); 
}
