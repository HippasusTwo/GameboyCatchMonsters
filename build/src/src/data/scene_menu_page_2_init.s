.module scene_menu_page_2_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -4

___bank_scene_menu_page_2_init = 255
.globl ___bank_scene_menu_page_2_init

_scene_menu_page_2_init::
        VM_LOCK

        VM_RESERVE              4

        ; If Variable True
        VM_IF_CONST             .GT, VAR_VARIABLE_6, 0, 1$, 0
        VM_JUMP                 2$
1$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 1

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

2$:

        ; If Variable True
        VM_IF_CONST             .GT, VAR_VARIABLE_7, 0, 3$, 0
        VM_JUMP                 4$
3$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

4$:

        ; If Variable True
        VM_IF_CONST             .GT, VAR_VARIABLE_8, 0, 5$, 0
        VM_JUMP                 6$
5$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 3

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

6$:

        ; If Variable True
        VM_IF_CONST             .GT, VAR_VARIABLE_9, 0, 7$, 0
        VM_JUMP                 8$
7$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 4

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

8$:

        ; If Variable True
        VM_IF_CONST             .GT, VAR_VARIABLE_10, 0, 9$, 0
        VM_JUMP                 10$
9$:
        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 5

        ; Actor Set Animation Frame
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 1
        VM_ACTOR_SET_ANIM_FRAME .LOCAL_ACTOR

10$:

        ; Actor Deactivate
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Wait For Input
        VM_INPUT_WAIT           240

        ; Pop Scene State
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SCENE_POP

        ; Stop Script
        VM_STOP
        ; Stop Script
        VM_STOP
