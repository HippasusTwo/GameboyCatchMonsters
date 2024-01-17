.module actor_space_dog_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, ___bank_scene_battle, _scene_battle

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_actor_space_dog_interact = 255
.globl ___bank_actor_space_dog_interact

_actor_space_dog_interact::
        VM_LOCK

        VM_RESERVE              4

        ; Variable Set To Value
        VM_SET_CONST            VAR_BATTLERENEMYSPECIES1, 5

        ; If Variable True
        VM_IF_CONST             .GT, VAR_VARIABLE_5, 0, 1$, 0
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "How did you get\nhere!?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Variable Set To True
        VM_SET_CONST            VAR_VARIABLE_5, 1

        ; Push Scene State
        VM_SCENE_PUSH

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_battle

        VM_JUMP                 2$
1$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "You can use the\nportal behind me\nto get home."
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

2$:

        ; Stop Script
        VM_STOP
