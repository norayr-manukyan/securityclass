#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>

int main(){

    printf ("Real User ID = %d\n",getuid());
    printf ("Effective User ID = %d\n\n",geteuid());

    return 0;
};