#include <stdio.h>
#include <stdio.h>

int fillArray(int values[], int arraySize);
void printArray(int values[], int arraySize);
extern int sortarray(int*, int);

int main() {

    int arraySize = 10;
    int values[arraySize];

    arraySize = fillArray(values, arraySize);

    printf("\nUNSORTED ARRAY\n");
    printArray(values, arraySize);
    
    sortarray(values, arraySize);

    printf("SORTED ARRAY\n");
    printArray(values, arraySize);

    return 0;

}

int fillArray(int values[], int arraySize) {

    printf("Enter the array size: ");
    scanf("%d", &arraySize);

    printf("\n");

    for (int i = 0; i < arraySize; i++) {
        fflush(stdin);
        printf("Now enter the value[%d]: ", i);
        scanf("%d", &values[i]);
    }
    
    return arraySize;
} 
 
void printArray(int values[], int arraySize) {

    printf(">> %d", values[0]);

    for (int i = 1; i < arraySize; i++) {
        printf(", %d", values[i]);
    }

    printf(".\n\n");

}