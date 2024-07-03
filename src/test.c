#include <unistd.h>

volatile unsigned int * const UART0DR = (unsigned int *)0x101f1000;
volatile unsigned int * const UART1DR = (unsigned int *)0x101f2000;
volatile unsigned int * const UART3DR = (unsigned int *)0x10009000;

void print_uart0(const char *s) {
    while(*s != '\0') { /* Loop until end of string */
        *UART0DR = (unsigned int)(*s); /* Transmit char */
        *UART1DR = (unsigned int)(*s); /* Transmit char */
        *UART3DR = (unsigned int)(*s); /* Transmit char */
        s++; /* Next char */
    }
}


void c_entry() {
    while(1) {
       print_uart0("Hello world!\n");
    }
}
