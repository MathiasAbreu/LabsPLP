#include <stdio.h>

int main() {

  int tamanhoVetor;
  scanf("%d", &tamanhoVetor);

  int vetor[tamanhoVetor];
  int vetorMenor[tamanhoVetor / 2];

  for(int i = 0; i < sizeof(tamanhoVetor); i+= 1) {

    int numero;
    scanf("%d", &numero);
    vetor[i] = numero;
  }

  for(int i = 0; i < (tamanhoVetor / 2); i+= 1) {

    vetorMenor[i] = (vetor[i] * vetor[7 - i]);
  }

  int troca = 1;
  while(troca) {

    troca = 0;
    for(int i = 0; i < (tamanhoVetor / 2) -1; i+= 1) {

      if(vetorMenor[i] < vetorMenor[i + 1]) {

        int x = vetorMenor[i];
        vetorMenor[i] = vetorMenor[i + 1];
        vetorMenor[i + 1] = x;
        troca = 1;
      }
    }
  }

  for(int i = 0; i < sizeof(vetorMenor); i+= 1) {
    printf("%d ", vetorMenor[i]);
  }

}
