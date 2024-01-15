.module trigger_31_interact

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_31_interact = 255
.globl ___bank_trigger_31_interact

_trigger_31_interact::
        VM_LOCK

        VM_RESERVE              4

        ; If Variable True
        VM_IF_CONST             .GT, VAR_S10T1_LOCAL_0, 0, 1$, 0
        ; Variable Set To True
        VM_SET_CONST            VAR_S10T1_LOCAL_0, 1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Set Direction
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_LEFT

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 2

        ; Actor Emote
        VM_ACTOR_EMOTE          .LOCAL_ACTOR, ___bank_emote_shock, _emote_shock

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001PLEASE\001\004 \001\001HELP!!\001\003\nMy garden..."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 2$
1$:
2$:

        ; Stop Script
        VM_STOP
