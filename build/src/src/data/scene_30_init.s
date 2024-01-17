.module scene_30_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -4

___bank_scene_30_init = 255
.globl ___bank_scene_30_init

_scene_30_init::
        VM_LOCK

        VM_RESERVE              4

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Movement Speed
        VM_ACTOR_SET_MOVE_SPEED .LOCAL_ACTOR, 32

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Start Update Script
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR
        VM_ACTOR_ACTIVATE       .LOCAL_ACTOR

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 3

        ; Actor Set Movement Speed
        VM_ACTOR_SET_MOVE_SPEED .LOCAL_ACTOR, 32

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 3

        ; Actor Start Update Script
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR
        VM_ACTOR_ACTIVATE       .LOCAL_ACTOR

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
