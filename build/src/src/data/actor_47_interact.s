.module actor_47_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_47_interact = 255
.globl ___bank_actor_47_interact

_actor_47_interact::
        VM_LOCK

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "Fantastic! You made it.\nUnfortunately, we don't\nhave a lot of dog pups\nright now. You'll have to\nget a different partner."
        VM_OVERLAY_CLEAR        0, 0, 20, 7, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 11, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
