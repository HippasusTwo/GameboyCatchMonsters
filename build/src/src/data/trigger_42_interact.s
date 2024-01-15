.module trigger_42_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_trigger_42_interact = 255
.globl ___bank_trigger_42_interact

_trigger_42_interact::
        VM_LOCK

        ; Advanced Menu
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_LOAD_TEXT            0
        .asciz "\001\1\003\002\001Fight\003\012\001Items\003\002\004Switch\003\014\004Flee"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_S18T0_LOCAL_0, .UI_MENU_CANCEL_B, 4
            .MENUITEM           0, 0, 4, 2, 4, 3
            .MENUITEM           8, 0, 1, 3, 4, 4
            .MENUITEM           0, 3, 4, 4, 1, 1
            .MENUITEM           10, 3, 3, 3, 2, 2
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT

        ; Text Dialogue
        VM_LOAD_TEXT            4
        .dw VAR_S18T0_LOCAL_1, VAR_S18T0_LOCAL_2, VAR_S18T0_LOCAL_3, VAR_S18T0_LOCAL_4
        .asciz "Attack 1: %d\nAttack 2: %d\n3: %d\n4: %d"
        VM_OVERLAY_CLEAR        0, 0, 20, 6, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 12, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
