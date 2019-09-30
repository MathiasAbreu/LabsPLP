#include <stdio.h>

int verificaDiagonais(int x, int y, int linha_destino, int coluna_destino) {

  int linha = x;
  int coluna = y;

  int vetorLinhas[4] = {-1,1,1,-1};
  int vetorColunas[4] = {-1,-1,1,1};

  for(int i = 0; i < sizeof(vetorLinhas); i+= 1) {

    while((linha >= 1 & linha <= 8) & (coluna >= 1 & coluna <= 8)) {
      if(linha == linha_destino & coluna == coluna_destino) {
        return 1;
      }

      linha += vetorLinhas[i];
      coluna += vetorColunas[i];
    }

    linha = x;
    coluna = y;
  }

  return 0;
}
int main() {

  int Xadrez[8][8];

  int X1;
  int Y1;

  int X2;
  int Y2;

  int result;

  scanf("%d %d %d %d\n", &X1,&Y1,&X2,&Y2);

  if(X1 == X2 && Y1 == Y2) {
    result = 0;
  }
  else if(verificaDiagonais(X1,Y1,X2,Y2)) {
    result = 1;
  }
  else if(X1 == X2 | Y1 == Y2) {
    result = 1;
  }
  else {
    result = 2;
  }

  printf("%d", result);
}
