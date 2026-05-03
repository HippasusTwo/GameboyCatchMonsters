.module scene_21_init

.include "vm.i"
.include "data/game_globals.i"

.globl _fade_frames_per_step

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_ACTOR_POS = -8
.LOCAL_TMP2_ACTOR_POS = -12

___bank_scene_21_init = 255
.globl ___bank_scene_21_init

_scene_21_init::
        VM_LOCK

        VM_RESERVE              12

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 4

        ; Actor Set Collisions
        VM_ACTOR_SET_COLL_ENABLED .LOCAL_ACTOR, 0

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Collisions
        VM_ACTOR_SET_COLL_ENABLED .LOCAL_ACTOR, 0

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF      VAR_BATTLERSPECIES
            .R_INT16    1
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 1$, 1
        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF      VAR_BATTLERSPECIES
            .R_INT16    3
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 3$, 1
        VM_JUMP                 4$
3$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_duck, _sprite_duck

4$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF      VAR_BATTLERSPECIES
            .R_INT16    4
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 5$, 1
        VM_JUMP                 6$
5$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_turnip, _sprite_turnip

6$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF      VAR_BATTLERSPECIES
            .R_INT16    5
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 7$, 1
        VM_JUMP                 8$
7$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_dog, _sprite_dog

8$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF      VAR_BATTLERSPECIES
            .R_INT16    6
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 9$, 1
        VM_JUMP                 10$
9$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_frog, _sprite_frog

10$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF      VAR_BATTLERSPECIES
            .R_INT16    7
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 11$, 1
        VM_JUMP                 12$
11$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_mantis, _sprite_mantis

12$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF      VAR_BATTLERSPECIES
            .R_INT16    8
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 13$, 1
        VM_JUMP                 14$
13$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_chipmunk, _sprite_chipmunk

14$:

        VM_JUMP                 2$
1$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Spritesheet
        VM_ACTOR_SET_SPRITESHEET .LOCAL_ACTOR, ___bank_sprite_mouse, _sprite_mouse

2$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF      VAR_COPQUEST
            .R_INT16    1
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 15$, 1
        VM_JUMP                 16$
15$:
        ; Actor Deactivate
        VM_SET_CONST            .LOCAL_ACTOR, 6
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR

16$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF      VAR_COPQUEST
            .R_INT16    1
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 17$, 1
        VM_JUMP                 18$
17$:
        ; Actor Deactivate
        VM_SET_CONST            .LOCAL_ACTOR, 7
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR

18$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF      VAR_COPQUEST
            .R_INT16    1
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 19$, 1
        VM_JUMP                 20$
19$:
        ; Actor Deactivate
        VM_SET_CONST            .LOCAL_ACTOR, 8
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR

20$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF      VAR_COPQUEST
            .R_INT16    1
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 21$, 1
        VM_JUMP                 22$
21$:
        ; Actor Deactivate
        VM_SET_CONST            .LOCAL_ACTOR, 10
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR

22$:

        ; Set Sprite Mode: 8x16
        VM_SET_SPRITE_MODE      .MODE_8X16

        ; Call Script: Init Menu
        VM_CALL_FAR             ___bank_script_init_menu, _script_init_menu

        ; Call Script: Init Shift Menu
        VM_CALL_FAR             ___bank_script_12, _script_12

        ; Music Play
        VM_MUSIC_PLAY           ___bank_song_drum_example_Data, _song_drum_example_Data, .MUSIC_NO_LOOP

        ; Actor Set Position
        ; -- Fetch $self$ actorPosition
        VM_SET_CONST            .LOCAL_TMP1_ACTOR_POS, 0
        VM_ACTOR_GET_POS        .LOCAL_TMP1_ACTOR_POS
        ; -- Fetch player actorPosition
        VM_SET_CONST            .LOCAL_TMP2_ACTOR_POS, 0
        VM_ACTOR_GET_POS        .LOCAL_TMP2_ACTOR_POS
        ; -- Calculate coordinate values
        VM_RPN
            .R_REF      ^/(.LOCAL_TMP1_ACTOR_POS + 1)/
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_REF      ^/(.LOCAL_TMP2_ACTOR_POS + 2)/
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        ; -- Position Actor
        VM_SET_CONST            .LOCAL_ACTOR, 5
        VM_ACTOR_SET_POS        .LOCAL_ACTOR

        ; Idle
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
