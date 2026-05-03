.module actor_sign_post_2_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_actor_sign_post_2_interact = 255
.globl ___bank_actor_sign_post_2_interact

_actor_sign_post_2_interact::
        VM_LOCK

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 6, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 12, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Voting today in Sample\012Town is already over. \012Winner: Omniparty"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_CLEAR        0, 0, 20, 6, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_LOAD_TEXT            0
        .asciz "Loser: Hold Omni a tiny\012bit responsible and write\012a stern letter if they\012disobey Party."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
