.module actor_58_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_58_interact = 255
.globl ___bank_actor_58_interact

_actor_58_interact::
        VM_LOCK

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Icecream, hotdogs!\012Combine 'em!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF      VAR_BATTLER1LVL
            .R_INT16    2
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 1$, 1
        VM_JUMP                 2$
1$:
        ; Variable Set To
        VM_SET_CONST            VAR_BATTLER1LVL, 3

        ; Variable 488 = VAR_BATTLERMAXHP+VAR_BATTLER1LVL+1
        VM_RPN
            .R_REF      VAR_BATTLERMAXHP
            .R_REF      VAR_BATTLER1LVL
            .R_OPERATOR .ADD
            .R_INT16    1
            .R_OPERATOR .ADD
            .R_REF_SET  VAR_BATTLERMAXHP
            .R_STOP

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            2
        .dw VAR_BATTLER1LVL, VAR_BATTLERMAXHP
        .asciz "You got a little fatter.\012Level: %d\012HP %d"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

2$:

        ; Stop Script
        VM_STOP
