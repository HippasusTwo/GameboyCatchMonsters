.module actor_rock_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_PUSH_DIR_VAR = -5

___bank_actor_rock_interact = 255
.globl ___bank_actor_rock_interact

_actor_rock_interact::
        VM_LOCK

        VM_RESERVE              5

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Push
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_GET_DIR        .LOCAL_ACTOR, .LOCAL_TMP1_PUSH_DIR_VAR
        VM_SET_CONST            .LOCAL_ACTOR, 1
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_IF_CONST             .EQ, .LOCAL_TMP1_PUSH_DIR_VAR, .DIR_UP, 1$, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP1_PUSH_DIR_VAR, .DIR_LEFT, 2$, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP1_PUSH_DIR_VAR, .DIR_RIGHT, 3$, 0
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    256
            .R_OPERATOR .ADD
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 1)/, .ARG0
        VM_POP                  1
        VM_JUMP                 4$
1$:
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    256
            .R_OPERATOR .SUB
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 1)/, .ARG0
        VM_POP                  1
        VM_JUMP                 4$
2$:
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    256
            .R_OPERATOR .SUB
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 1)/, .ARG0
        VM_POP                  1
        VM_JUMP                 4$
3$:
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    256
            .R_OPERATOR .ADD
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 1)/, .ARG0
        VM_POP                  1
4$:
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_CHECK_COLL
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Stop Script
        VM_STOP
