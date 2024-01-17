.module actor_64_update

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_OTHER_ACTOR = -7
.LOCAL_TMP2_OTHER_ACTOR = -7
.LOCAL_TMP3_OTHER_ACTOR = -7
.LOCAL_TMP4_OTHER_ACTOR = -7

___bank_actor_64_update = 255
.globl ___bank_actor_64_update

_actor_64_update::
        VM_RESERVE              7

1$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; If Actor right Relative To Actor
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_SET_CONST            .LOCAL_TMP1_OTHER_ACTOR, 6
        VM_ACTOR_GET_POS        .LOCAL_TMP1_OTHER_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_REF      ^/(.LOCAL_TMP1_OTHER_ACTOR + 1)/
            .R_OPERATOR .GT
            .R_STOP
        VM_IF_CONST             .EQ, .ARG0, 0, 2$, 1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 6

        ; Actor Move Relative
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    128
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, ^/(.ACTOR_ATTR_CHECK_COLL | .ACTOR_ATTR_H_FIRST)/
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        VM_JUMP                 3$
2$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; If Actor left Relative To Actor
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_SET_CONST            .LOCAL_TMP2_OTHER_ACTOR, 6
        VM_ACTOR_GET_POS        .LOCAL_TMP2_OTHER_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_REF      ^/(.LOCAL_TMP2_OTHER_ACTOR + 1)/
            .R_OPERATOR .LT
            .R_STOP
        VM_IF_CONST             .EQ, .ARG0, 0, 4$, 1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 6

        ; Actor Move Relative
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    -128
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, ^/(.ACTOR_ATTR_CHECK_COLL | .ACTOR_ATTR_H_FIRST)/
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        VM_JUMP                 5$
4$:
5$:

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; If Actor up Relative To Actor
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_SET_CONST            .LOCAL_TMP3_OTHER_ACTOR, 6
        VM_ACTOR_GET_POS        .LOCAL_TMP3_OTHER_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_REF      ^/(.LOCAL_TMP3_OTHER_ACTOR + 2)/
            .R_OPERATOR .LT
            .R_STOP
        VM_IF_CONST             .EQ, .ARG0, 0, 6$, 1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 6

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
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, ^/(.ACTOR_ATTR_CHECK_COLL | .ACTOR_ATTR_H_FIRST)/
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        VM_JUMP                 7$
6$:
7$:

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; If Actor down Relative To Actor
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_SET_CONST            .LOCAL_TMP4_OTHER_ACTOR, 6
        VM_ACTOR_GET_POS        .LOCAL_TMP4_OTHER_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_REF      ^/(.LOCAL_TMP4_OTHER_ACTOR + 2)/
            .R_OPERATOR .GT
            .R_STOP
        VM_IF_CONST             .EQ, .ARG0, 0, 8$, 1

        VM_SET_CONST            .LOCAL_ACTOR, 6
        ; Store X Position In Variable
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_STOP
        VM_SET                  VAR_TEMP_0, .ARG0
        VM_POP                  1

        VM_SET_CONST            .LOCAL_ACTOR, 0
        ; Store Y Position In Variable
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_STOP
        VM_SET                  VAR_TEMP_1, .ARG0
        VM_POP                  1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 6

        ; Actor Move To Variables
        VM_RPN
            .R_REF      VAR_TEMP_0
            .R_INT16    128
            .R_OPERATOR .MUL
            .R_REF      VAR_TEMP_1
            .R_INT16    128
            .R_OPERATOR .MUL
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, ^/(.ACTOR_ATTR_CHECK_COLL | .ACTOR_ATTR_H_FIRST)/
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        VM_JUMP                 9$
8$:
9$:

3$:

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
