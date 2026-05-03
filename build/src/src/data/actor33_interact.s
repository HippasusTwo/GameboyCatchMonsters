.module actor33_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor33_interact = 255
.globl ___bank_actor33_interact

_actor33_interact::
        VM_LOCK

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            6
        .dw VAR_BATTLERSTR, VAR_BATTLERSPEED, VAR_BATTLERDEF, VAR_BATTLERHP1, VAR_BATTLERMAXHP, VAR_BATTLERSPECIAL
        .asciz "STR %d SPD %d DF %d\012HP: %d /%d SP %d"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_LOAD_TEXT            3
        .dw VAR_BATTLER1LVL, VAR_BATTLERTYPE, VAR_BATTLERSPECIES
        .asciz "Lvl %d Type %d\012SpeciesID %d"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
