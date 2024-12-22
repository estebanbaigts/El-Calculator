#include <stdio.h>

int main() {
    double num1, num2;
    char operator;

    printf("Entrez le premier nombre: ");
    scanf("%lf", &num1);
    printf("Entrez l'opération (+, -, *, /): ");
    scanf(" %c", &operator);
    printf("Entrez le deuxième nombre: ");
    scanf("%lf", &num2);

    switch (operator) {
        case '+':
            printf("Résultat: %.2f\n", num1 + num2);
            break;
        case '-':
            printf("Résultat: %.2f\n", num1 - num2);
            break;
        case '*':
            printf("Résultat: %.2f\n", num1 * num2);
            break;
        case '/':
            if (num2 != 0) {
                printf("Résultat: %.2f\n", num1 / num2);
            } else {
                printf("Erreur: Division par zéro!\n");
            }
            break;
        default:
            printf("Opération invalide!\n");
            break;
    }

    return 0;
}
