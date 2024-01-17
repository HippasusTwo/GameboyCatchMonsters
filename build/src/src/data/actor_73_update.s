.module actor_73_update

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

.LOCAL_TMP0_WAIT_ARGS = -4
.LOCAL_ACTOR = -4
.LOCAL_TMP2_ACTOR_DIR = -5

___bank_actor_73_update = 255
.globl ___bank_actor_73_update

_actor_73_update::
        VM_RESERVE              5

1$:
        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP0_WAIT_ARGS, 60
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP0_WAIT_ARGS

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; If Actor Facing Direction
        VM_ACTOR_GET_DIR        .LOCAL_ACTOR, .LOCAL_TMP2_ACTOR_DIR
        VM_IF_CONST             .NE, .LOCAL_TMP2_ACTOR_DIR, .DIR_UP, 2$, 0

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Move Relative
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    2560
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_CHECK_COLL
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Variable Set To Value
        VM_SET_CONST            VAR_S29A1_LOCAL_0, 8

        VM_JUMP                 3$
2$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Move Relative
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    0
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    -2560
            .R_OPERATOR .ADD
            .R_INT16    0
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_CHECK_COLL
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Variable Set To Value
        VM_SET_CONST            VAR_S29A1_LOCAL_0, -6

3$:

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
