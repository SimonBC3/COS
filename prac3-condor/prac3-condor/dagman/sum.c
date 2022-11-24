
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){

  double suma, x;
  int n, i;
  FILE *fp;
  char name[255],patron[255];

  
  if (argc !=3) {
    scanf("%d\n",&n);
    scanf("%s",patron);
//    printf ("Uso: sum n nombre\n");
   } else {
    n=atoi(argv[1]);
    sprintf(patron, "%s", argv[2]);
   }

    suma=0;
    for(i=0; i<n; i++) {
      sprintf(name, "%s.%d", patron,i);
//      printf("p1 %s\n", name);
      fp=fopen(name, "r");
      fscanf(fp,"%lf\n",&x);
//      printf("p2 %f\n", x);
      
      suma=suma+x;
      fclose(fp);
      }
    printf ("%f\n", suma);
//  }  
  return 0;
}
