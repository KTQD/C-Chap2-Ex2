#include <stdio.h>

int main()
{
    int min, hour;
    printf("Input hours: ");
    scanf("%d", &hour);
    printf("Input minutes: ");
    scanf("%d", &min);

    printf("Total: %d minutes.\n", min + hour * 60);
    return 0;
}
