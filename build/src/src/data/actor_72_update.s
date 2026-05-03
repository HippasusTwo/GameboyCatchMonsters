.module actor_72_update

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

.LOCAL_TMP0_WAIT_ARGS = -4
.LOCAL_ACTOR = -4
.LOCAL_TMP2_ACTOR_DIR = -5

___bank_actor_72_update = 255
.globl ___bank_actor_72_update

_actor_72_update::
        VM_RESERVE              5

1$:
        ; Wait 30 frames
        VM_SET_CONST            .LOCAL_TMP0_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP0_WAIT_ARGS

        ; If Actor Facing Direction
        VM_SET_CONST            .LOCAL_ACTOR, 3
        VM_ACTOR_GET_DIR        .LOCAL_ACTOR, .LOCAL_TMP2_ACTOR_DIR
        ; -- Calculate value
        VM_RPN
            .R_INT16    .DIR_UP
            .R_STOP
        VM_IF                   .NE, ^/(.LOCAL_TMP2_ACTOR_DIR - 1)/, .ARG0, 2$, 1

        ; Actor Move Relative
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    3
            .R_INT16    0
            .R_INT16    3840
            .R_STOP
        ; -- Move Actor
        VM_ACTOR_MOVE_TO_INIT   .ARG2, .ACTOR_ATTR_RELATIVE_SNAP_TILE
        VM_ACTOR_MOVE_TO_SET_DIR_Y .ARG2
        VM_ACTOR_MOVE_TO_Y      .ARG2, .ACTOR_ATTR_RELATIVE_SNAP_TILE
        VM_POP                  3

        ; Variable Set To
        VM_SET_CONST            VAR_S29A2_LOCAL_0, 2

        VM_JUMP                 3$
2$:
        ; Actor Move Relative
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    3
            .R_INT16    0
            .R_INT16    -3840
            .R_STOP
        ; -- Move Actor
        VM_ACTOR_MOVE_TO_INIT   .ARG2, .ACTOR_ATTR_RELATIVE_SNAP_TILE
        VM_ACTOR_MOVE_TO_SET_DIR_Y .ARG2
        VM_ACTOR_MOVE_TO_Y      .ARG2, .ACTOR_ATTR_RELATIVE_SNAP_TILE
        VM_POP                  3

        ; Variable Set To
        VM_SET_CONST            VAR_S29A2_LOCAL_0, -2

3$:

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
