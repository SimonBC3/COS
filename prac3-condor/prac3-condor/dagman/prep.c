
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){

  double x, inf, sup, inc;
  int n, i, it;
  FILE *fp;
  char name[255],patron[255];

  
  if (argc !=6) {
    scanf("%lf\n",&inf);
    scanf("%lf\n",&sup);
    scanf("%d\n",&it);
    scanf("%d\n",&n);
    scanf("%s",patron);
//    printf ("Uso: prep inf sup it n patron\n");
   } else {
    inf=atof(argv[1]);
    sup=atof(argv[2]);
    it=atoi(argv[3]);
    n=atoi(argv[4]);
    sprintf(patron, "%s", argv[5]);
//    printf("args: %lf %lf %d %d %s\n", inf,sup,it,n,patron);
   }

    inc=(sup-inf)/n;
    it = it/n;

    x = inf;
    i = 0;
    while(x<sup) {
      sprintf(name, "%s.%d", patron,i);
//      printf("p1 %s\n", name);
      fp=fopen(name, "w");
      fprintf(fp,"%lf\n",x);
      fprintf(fp,"%lf\n",x+inc);
      fprintf(fp,"%d\n",it);
      fclose(fp);
      x= x+inc;
      i++;
      }
    printf ("Ficheros generados (%s)\n",argv[0]);
//  }  
  return 0;
}
