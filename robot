#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
struct sensor{
int S1;
int S2;

};
struct motor{
int M1;
int M2;
};
struct sensor LeSensors(void);

struct motor IA(int  s3 , int s4);

void DriveMotors(int m3, int m4);

int main(){
int s1, s2, m1, m2;
struct sensor leituras;
struct motor motores;
while(1)
{
    leituras = LeSensors();
    s1=leituras.S1;
    s2=leituras.S2;

    motores = IA(s1, s2);
    m1 = motores.M1;
    m2 = motores.M2;
    DriveMotors(m1, m2);
}
 return 0;

}
struct sensor LeSensors(void){
int x1, x2;
scanf("%d %d", &x1, &x2 );

struct sensor leituras;
leituras.S1 = x1;

leituras.S2 = x2;

return leituras;


}

struct motor IA(int  s3 , int s4){

int m3, m4;
     if(s3==0 && s4==0) {m3=1; m4=1;}
else if(s3==1 && s4==0) {m3=0; m4=1;}
else if(s3==0 && s4==1) {m3=1; m4=0;}
else if(s3==1 && s4==1) {m3=0; m4=0;}

struct motor motores;

motores.M1 = m3;
motores.M2 = m4;

return motores;
}

void DriveMotors(int m3, int m4){
    printf("%d %d\n",m3, m4);

}
