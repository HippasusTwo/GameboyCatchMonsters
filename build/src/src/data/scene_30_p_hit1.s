.module scene_30_p_hit1

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_TMP0_PARAM0_VALUE = -4
.LOCAL_ACTOR = -4
.LOCAL_TMP2_ACTOR_DIR = -5

___bank_scene_30_p_hit1 = 255
.globl ___bank_scene_30_p_hit1

_scene_30_p_hit1::
        VM_RESERVE              5

        ; If Parameter 0 Equals 2
        VM_GET_TLOCAL           .LOCAL_TMP0_PARAM0_VALUE, 0
        VM_IF_CONST             .EQ, .LOCAL_TMP0_PARAM0_VALUE, 2, 1$, 0
        VM_JUMP                 2$
1$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 0

        ; Actor Emote
        VM_ACTOR_EMOTE          .LOCAL_ACTOR, ___bank_emote_shock, _emote_shock

        ; If Actor Facing Direction
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_GET_DIR        .LOCAL_ACTOR, .LOCAL_TMP2_ACTOR_DIR
        ; -- Calculate value
        VM_RPN
            .R_INT16    .DIR_DOWN
            .R_STOP
        VM_IF                   .NE, ^/(.LOCAL_TMP2_ACTOR_DIR - 1)/, .ARG0, 3$, 1

        ; Actor Move Relative
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    0
            .R_INT16    0
            .R_INT16    -256
            .R_STOP
        ; -- Move Actor
        VM_ACTOR_MOVE_TO_INIT   .ARG2, .ACTOR_ATTR_RELATIVE_SNAP_TILE
        VM_ACTOR_MOVE_TO_SET_DIR_Y .ARG2
        VM_ACTOR_MOVE_TO_Y      .ARG2, .ACTOR_ATTR_RELATIVE_SNAP_TILE
        VM_POP                  3

        VM_JUMP                 4$
3$:
        ; Actor Move Relative
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    0
            .R_INT16    0
            .R_INT16    256
            .R_STOP
        ; -- Move Actor
        VM_ACTOR_MOVE_TO_INIT   .ARG2, .ACTOR_ATTR_RELATIVE_SNAP_TILE
        VM_ACTOR_MOVE_TO_SET_DIR_Y .ARG2
        VM_ACTOR_MOVE_TO_Y      .ARG2, .ACTOR_ATTR_RELATIVE_SNAP_TILE
        VM_POP                  3

4$:

        ; Stop Script
        VM_STOP
2$:

        ; Stop Script
        VM_STOP
