.module scene_21_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -4

___bank_scene_21_init = 255
.globl ___bank_scene_21_init

_scene_21_init::
        VM_LOCK

        VM_RESERVE              4

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 4

        ; Actor Set Collisions
        VM_ACTOR_SET_COLL_ENABLED .LOCAL_ACTOR, 0

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Collisions
        VM_ACTOR_SET_COLL_ENABLED .LOCAL_ACTOR, 0

        ; If Variable .EQ Value
        VM_IF_CONST             .EQ, VAR_BATTLERSPECIES, 1, 1$, 0
        VM_JUMP                 2$
1$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_mouse, _sprite_mouse

2$:

        ; If Variable .EQ Value
        VM_IF_CONST             .EQ, VAR_BATTLERSPECIES, 3, 3$, 0
        VM_JUMP                 4$
3$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_duck, _sprite_duck

4$:

        ; Music Play
        VM_MUSIC_PLAY           ___bank_song_drum_example_Data, _song_drum_example_Data, .MUSIC_NO_LOOP

        VM_SET_CONST            .LOCAL_ACTOR, 0
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
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Position To Variables
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
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
