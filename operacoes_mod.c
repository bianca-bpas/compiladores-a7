#include <stdio.h>

int soma(int a, int b) {
    if (a < 0 || b < 0){
        return -1;
    }
    return a + b;
}

int multiplica(int x, int y) {
    if (x < 0 || y < 0) {
        return -1;
    }
    return x * y;
}

int divide(int x, int y) {
    if (x < 0 || y < 0) {
        return -1;
    }
    if (y == 0){
        return -1;
    } 
    return x / y;
}

int calcula(int valor) {
    int temp = soma(valor, 3);
    if (temp % 2 == 0) {
        return multiplica(temp, 4);
    } else {
        return divide(temp, 2);
    }
}

int main() {
    int resultado = calcula(5);
    printf("Resultado: %d\n", resultado);
    return 0;
}