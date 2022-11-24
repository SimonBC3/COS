
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){

  double area, integral, x;
  double inf, sup, inc;
  int i,n;
  
  if (argc != 4) { 

    scanf("%lf\n",&inf);
    scanf("%lf\n",&sup);
    scanf("%d",&n);

  } else {

    inf=atof(argv[1]);
    sup=atof(argv[2]);
    n=atof(argv[3]);

   }

    inc=(sup-inf)/n;

    area = 0.0;
  
    x = inf;
    while(i < n) {
        area += sin(x);
        x = x+inc;
	i++;
	
      }
    integral = area*inc; 
    printf ("%f\n", integral);
    
  return 0;
}
