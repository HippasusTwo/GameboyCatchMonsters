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
        VM_LOAD_TEXT            0
        .asciz "Let's head to town. I \ncan't believe an elephant"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_LOAD_TEXT            0
        .asciz "walloped you. You have a \nfunny roommate, right?"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Text Menu
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002\002\001Mouse\n\002\001Cat\n\002\001Duck"
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_BATTLERSPECIES, 0, 3
            .MENUITEM           1, 1, 1, 3, 0, 2
            .MENUITEM           1, 2, 1, 3, 1, 3
            .MENUITEM           1, 3, 1, 3, 2, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Move To
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 1664
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; Variable Set To True
        VM_SET_CONST            VAR_S15A15_LOCAL_1, 1

        ; Stop Script
        VM_STOP
