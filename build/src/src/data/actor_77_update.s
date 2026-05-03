.module actor_77_update

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames

.area _CODE_255

.LOCAL_TMP0_WAIT_ARGS = -4
.LOCAL_ACTOR = -4
.LOCAL_TMP2_WAIT_ARGS = -5

___bank_actor_77_update = 255
.globl ___bank_actor_77_update

_actor_77_update::
        VM_RESERVE              5

1$:
        ; Wait 30 frames
        VM_SET_CONST            .LOCAL_TMP0_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP0_WAIT_ARGS

        ; Actor Set Animation Frame To
        ; -- Calculate value
        VM_RPN
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 6
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Wait 30 frames
        VM_SET_CONST            .LOCAL_TMP2_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP2_WAIT_ARGS

        ; Actor Set Animation Frame To
        ; -- Calculate value
        VM_RPN
            .R_INT16    1
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 6
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

        ; Idle
        VM_IDLE

        VM_JUMP                 1$
        ; Stop Script
        VM_STOP
