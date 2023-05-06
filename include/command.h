#ifndef COMMAND_H
#define COMMAND_H

#include <string.h>

typedef struct command {
    char executable[256];
    char * args[256];
} command_t;

#endif