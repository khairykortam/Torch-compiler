#include<stdio.h>
#include<stdint.h>
#include<unistd.h>



void dump(uint64_t x){
    char buffer[32];
    size_t buffer_size=1;
    buffer[sizeof(buffer)-buffer_size] = '\n';

    do {
        buffer[sizeof(buffer) - buffer_size -1] = x%10+'0';
       buffer_size++;
       x/=10;
    } while (x);
    write(1, &buffer[sizeof(buffer) - buffer_size], buffer_size);
}
int main(){
    dump(69);
    dump(0);
    return 0;
}