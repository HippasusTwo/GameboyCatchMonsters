.module actor_26_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_26_interact = 255
.globl ___bank_actor_26_interact

_actor_26_interact::
        VM_LOCK

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "This drumkit plays \na song with a drum base"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
