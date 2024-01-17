.module scene_28_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -4

___bank_scene_28_init = 255
.globl ___bank_scene_28_init

_scene_28_init::
        VM_LOCK

        VM_RESERVE              4

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 3

        ; Actor Set Movement Speed
        VM_ACTOR_SET_MOVE_SPEED .LOCAL_ACTOR, 32

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 3

        ; Actor Start Update Script
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR
        VM_ACTOR_ACTIVATE       .LOCAL_ACTOR

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 6

        ; Actor Set Collisions
        VM_ACTOR_SET_COLL_ENABLED .LOCAL_ACTOR, 0

        ; If Variable .EQ Value
        VM_IF_CONST             .EQ, VAR_BATTLERSPECIES, 1, 1$, 0
        VM_JUMP                 2$
1$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 6

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_mouse, _sprite_mouse

2$:

        ; If Variable .EQ Value
        VM_IF_CONST             .EQ, VAR_BATTLERSPECIES, 3, 3$, 0
        VM_JUMP                 4$
3$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 6

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_duck, _sprite_duck

4$:

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
