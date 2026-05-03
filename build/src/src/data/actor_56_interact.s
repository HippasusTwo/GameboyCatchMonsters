.module actor_56_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_actor_56_interact = 255
.globl ___bank_actor_56_interact

_actor_56_interact::
        VM_LOCK

        VM_RESERVE              4

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Let's head to town. I \012can't believe an elephant"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_LOAD_TEXT            0
        .asciz "walloped you. You have a \012funny roommate, right?"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Text Menu
        VM_OVERLAY_CLEAR        0, 0, 20, 6, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 12, .OVERLAY_IN_SPEED
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002\002\001Mouse\012\002\001Cat\012\002\001Duck\012\002\001Turnip\012\003\014\002\002\001     Dog\012\002\001I forget\012\002\001Mantis\012\002\001Chipmunk"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_BATTLERSPECIES, 0, 8
            .MENUITEM           1, 1, 1, 5, 0, 2
            .MENUITEM           1, 2, 1, 6, 1, 3
            .MENUITEM           1, 3, 1, 7, 2, 4
            .MENUITEM           1, 4, 1, 8, 3, 5
            .MENUITEM           10, 1, 1, 8, 4, 6
            .MENUITEM           10, 2, 2, 8, 5, 7
            .MENUITEM           10, 3, 3, 8, 6, 8
            .MENUITEM           10, 4, 4, 8, 7, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Actor Move To
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    3328
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 2
        VM_ACTOR_MOVE_TO_INIT   .LOCAL_ACTOR, .ACTOR_ATTR_H_FIRST
        VM_ACTOR_MOVE_TO_SET_DIR_X .LOCAL_ACTOR
        VM_ACTOR_MOVE_TO_X      .LOCAL_ACTOR, .ACTOR_ATTR_H_FIRST
        VM_ACTOR_MOVE_TO_SET_DIR_Y .LOCAL_ACTOR
        VM_ACTOR_MOVE_TO_Y      .LOCAL_ACTOR, .ACTOR_ATTR_H_FIRST

        ; Variable Set To
        VM_SET_CONST            VAR_S15A15_LOCAL_1, 1

        ; Variable Set To
        VM_SET_CONST            VAR_BATTLER1LVL, 1

        ; Variable Set To
        VM_SET_CONST            VAR_WLOOKINGFOR, 0

        ; Call Script: DatabaseMons
        VM_CALL_FAR             ___bank_script_15, _script_15

        ; Stop Script
        VM_STOP
