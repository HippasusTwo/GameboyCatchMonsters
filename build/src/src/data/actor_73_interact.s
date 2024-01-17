.module actor_73_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_TMP0_PARAM0_VALUE = -4
.LOCAL_ACTOR = -4
.LOCAL_TMP2_ACTOR_DIR = -5

___bank_actor_73_interact = 255
.globl ___bank_actor_73_interact

_actor_73_interact::
        VM_RESERVE              5

        ; If Parameter 0 Equals 0
        VM_GET_TLOCAL           .LOCAL_TMP0_PARAM0_VALUE, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP0_PARAM0_VALUE, 0, 1$, 0
        VM_JUMP                 2$
1$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; If Actor Facing Direction
        VM_ACTOR_GET_DIR        .LOCAL_ACTOR, .LOCAL_TMP2_ACTOR_DIR
        VM_IF_CONST             .NE, .LOCAL_TMP2_ACTOR_DIR, .DIR_UP, 3$, 0

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Move Relative
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    -128
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, 0
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        VM_JUMP                 4$
3$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Move Relative
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    128
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, 0
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

4$:

        ; Stop Script
        VM_STOP
2$:

        ; Stop Script
        VM_STOP
