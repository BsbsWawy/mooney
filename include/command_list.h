#ifndef COMMAND_LIST_H
#define COMMAND_LIST_H

#include <command.h>

typedef struct command_list {
    int count;
    command_node_t * head;
    command_node_t * current_command;
} command_list_t;

typedef struct command_node
{
    command_t * command;
} command_node_t;

#endif