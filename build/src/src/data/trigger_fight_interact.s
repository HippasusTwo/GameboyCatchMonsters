.module trigger_fight_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, ___bank_scene_player_s_house, _scene_player_s_house

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_trigger_fight_interact = 255
.globl ___bank_trigger_fight_interact

_trigger_fight_interact::
        VM_LOCK

        VM_RESERVE              4

        ; Variable Set To Value
        VM_SET_CONST            VAR_WORDY1, 80

        ; Variable Set To Value
        VM_SET_CONST            VAR_WORDY2, 97

        ; Variable Set To Value
        VM_SET_CONST            VAR_WORDY3, 119

        ; Variable Set To Value
        VM_SET_CONST            VAR_WORDY4, 119

        ; Variable Set To Value
        VM_SET_CONST            VAR_WORDY5, 119

        ; Variable Set To Value
        VM_SET_CONST            VAR_WORDY6, 119

        ; Background Text
        VM_PUSH_CONST 0
          VM_GET_UINT8 .ARG0, _overlay_priority
          VM_SET_CONST_UINT8 _overlay_priority, 0

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_BKG

        VM_LOAD_TEXT            0
        .asciz "\003\003\005Metalclaw"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_NONMODAL, .UI_WAIT_TEXT

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_WIN

        VM_SET_UINT8 _overlay_priority, .ARG0
        VM_POP 1

        ; Background Text
        VM_PUSH_CONST 0
          VM_GET_UINT8 .ARG0, _overlay_priority
          VM_SET_CONST_UINT8 _overlay_priority, 0

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_BKG

        VM_LOAD_TEXT            0
        .asciz "\003\003\006Waterblast"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_NONMODAL, .UI_WAIT_TEXT

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_WIN

        VM_SET_UINT8 _overlay_priority, .ARG0
        VM_POP 1

        ; Background Text
        VM_PUSH_CONST 0
          VM_GET_UINT8 .ARG0, _overlay_priority
          VM_SET_CONST_UINT8 _overlay_priority, 0

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_BKG

        VM_LOAD_TEXT            0
        .asciz "\003\003\007Woodhammer"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_NONMODAL, .UI_WAIT_TEXT

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_WIN

        VM_SET_UINT8 _overlay_priority, .ARG0
        VM_POP 1

        ; Background Text
        VM_PUSH_CONST 0
          VM_GET_UINT8 .ARG0, _overlay_priority
          VM_SET_CONST_UINT8 _overlay_priority, 0

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_BKG

        VM_LOAD_TEXT            0
        .asciz "\003\003\011Earthwall"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_NONMODAL, .UI_WAIT_TEXT

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_WIN

        VM_SET_UINT8 _overlay_priority, .ARG0
        VM_POP 1

        ; Background Text
        VM_PUSH_CONST 0
          VM_GET_UINT8 .ARG0, _overlay_priority
          VM_SET_CONST_UINT8 _overlay_priority, 0

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_BKG

        VM_LOAD_TEXT            0
        .asciz "\003\003\010Firefart"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_NONMODAL, .UI_WAIT_TEXT

        VM_SWITCH_TEXT_LAYER .TEXT_LAYER_WIN

        VM_SET_UINT8 _overlay_priority, .ARG0
        VM_POP 1

        ; Text Menu
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002\002\001Attack 1\n\002\001Attack 2\n\002\001Attack 3\n\002\001Attack 4\n\003\014\002\002\001Attack 5"
        VM_OVERLAY_CLEAR        0, 0, 20, 6, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 12, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_S18T0_LOCAL_1, .UI_MENU_CANCEL_B, 5
            .MENUITEM           1, 1, 1, 5, 0, 2
            .MENUITEM           1, 2, 1, 5, 1, 3
            .MENUITEM           1, 3, 1, 5, 2, 4
            .MENUITEM           1, 4, 1, 5, 3, 5
            .MENUITEM           10, 1, 1, 5, 4, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Switch Variable
        VM_SWITCH               VAR_S18T0_LOCAL_1, 4, 0
        .dw 1, 1$
        .dw 2, 2$
        .dw 3, 3$
        .dw 4, 4$

        VM_JUMP                 5$
        ; case 1:
1$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "Attack 1 used! Swipe!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Variables .SUB Value
        VM_RPN
            .R_REF      VAR_BATTLERENEMYHP1
            .R_INT16    1
            .R_OPERATOR .SUB
            .R_STOP
        VM_SET                  VAR_BATTLERENEMYHP1, .ARG0
        VM_POP                  1

        ; Variables .SUB Value
        VM_RPN
            .R_INT16    0
            .R_INT16    255
            .R_REF      VAR_BATTLERHP1
            .R_INT16    1
            .R_OPERATOR .SUB
            .R_OPERATOR .MIN
            .R_OPERATOR .MAX
            .R_STOP
        VM_SET                  VAR_BATTLERHP1, .ARG0
        VM_POP                  1

        VM_JUMP                 5$
        ; case 2:
2$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "Attack 2 unleashed!\n Not very effective."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 5$
        ; case 3:
3$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "Attack!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 5$
        ; case 4:
4$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "Missed!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 5$
5$:

        VM_SET_CONST            .LOCAL_ACTOR, 3
        ; Store Y Position In Variable
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_STOP
        VM_SET                  VAR_TEMP_1, .ARG0
        VM_POP                  1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 3

        ; Actor Move To Variables
        VM_RPN
            .R_REF      VAR_BATTLERHP1
            .R_INT16    128
            .R_OPERATOR .MUL
            .R_REF      VAR_TEMP_1
            .R_INT16    128
            .R_OPERATOR .MUL
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        VM_SET_CONST            .LOCAL_ACTOR, 4
        ; Store Y Position In Variable
        VM_ACTOR_GET_POS        .LOCAL_ACTOR
        VM_RPN
            .R_REF      ^/(.LOCAL_ACTOR + 2)/
            .R_INT16    128
            .R_OPERATOR .DIV
            .R_STOP
        VM_SET                  VAR_TEMP_1, .ARG0
        VM_POP                  1

        ; Actor Set Active
        VM_SET_CONST            .LOCAL_ACTOR, 4

        ; Actor Move To Variables
        VM_RPN
            .R_REF      VAR_BATTLERENEMYHP1
            .R_INT16    128
            .R_OPERATOR .MUL
            .R_REF      VAR_TEMP_1
            .R_INT16    128
            .R_OPERATOR .MUL
            .R_STOP
        VM_SET                  ^/(.LOCAL_ACTOR + 1 - 2)/, .ARG1
        VM_SET                  ^/(.LOCAL_ACTOR + 2 - 2)/, .ARG0
        VM_POP                  2
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 3)/, .ACTOR_ATTR_H_FIRST
        VM_ACTOR_MOVE_TO        .LOCAL_ACTOR

        ; If Variable .LT Value
        VM_IF_CONST             .LT, VAR_BATTLERHP1, 1, 6$, 0
        VM_JUMP                 7$
6$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\002\002@A\nBC\001\003\004\001\377\002\001You lost."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Variable Set To Value
        VM_SET_CONST            VAR_BATTLERHP1, 5

        ; Reset Scene State Stack
        VM_SCENE_STACK_RESET

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 1)/, 0
        VM_SET_CONST            ^/(.LOCAL_ACTOR + 2)/, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_player_s_house

7$:

        ; If Variable .EQ Value
        VM_IF_CONST             .EQ, VAR_BATTLERENEMYHP1, 0, 8$, 0
        VM_JUMP                 9$
8$:
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\001\001\002\002@A\nBC\001\003\004\001\377\002\001You won!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Music Play
        VM_MUSIC_PLAY           ___bank_song_drum_example_Data, _song_drum_example_Data, .MUSIC_NO_LOOP

        ; Pop Scene State
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_OUT             1
        VM_SCENE_POP

        ; Stop Script
        VM_STOP
9$:

        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "It attacked."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
