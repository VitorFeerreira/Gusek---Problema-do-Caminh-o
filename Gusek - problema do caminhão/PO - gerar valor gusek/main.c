#include <stdio.h>
#include <stdlib.h>

int main()
{
    printf("data;\n");
    printf("set Compartimento := ");
    for (int i=1; i<=500; i++)
    {
        printf("C%d \t",i);
    }

    printf(";\n\n");
    printf("set Produto := ");
    for (int i=1; i<=500; i++)
    {
        printf("P%d \t",i);
    }
    printf(";\n\n");

    printf("param capacidade := ");
    for (int i=1; i<=500; i++)
    {
        printf("C%d %d\t", i, 500+rand()%100000);
    }
    printf(";\n\n");

    printf("param demanda := ");
    for (int i=1; i<=500; i++)
    {
        printf("P%d %d\t", i, 8000+rand()%15000);
    }
    printf(";\n\n");

    printf("param produto_adicional := ");
    for (int i=1; i<=500; i++)
    {
        printf("P%d %d\t", i, 5+rand()%30);
    }
    printf(";\n end;\n");

    return 0;
}
