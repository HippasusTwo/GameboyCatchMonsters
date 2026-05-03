.module actor_34_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_34_interact = 255
.globl ___bank_actor_34_interact

_actor_34_interact::
        VM_LOCK

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            3
        .dw VAR_BATTLERENEMYSTR, VAR_BATTLERENEMYHP1, VAR_BATTLERENEMYSPECIAL
        .asciz "STR %d HP %d \012SPECIAL %d"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_LOAD_TEXT            3
        .dw VAR_BATTLERENEMYLVL, VAR_BATTLERENEMYTYPE, VAR_BATTLERENEMYSPECIES1
        .asciz "Lvl %d Type %d \012Species ID %d\012"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
