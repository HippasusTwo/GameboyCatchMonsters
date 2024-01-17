.module actor_45_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_45_interact = 255
.globl ___bank_actor_45_interact

_actor_45_interact::
        VM_LOCK

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "Voting is important, but\nI really wish we had ONE\nwho wasn't pro-Omnicorp"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
