.module actor_44_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_44_interact = 255
.globl ___bank_actor_44_interact

_actor_44_interact::
        VM_LOCK

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "The news will probably\nreport the long lines as\na sign of great turnout,\ninstead of the fact we\nonly have one voting\rbooth in town."
        VM_OVERLAY_CLEAR        0, 0, 20, 7, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 11, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
