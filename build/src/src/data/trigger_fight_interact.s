.module trigger_fight_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_player_s_house, _scene_player_s_house

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_ACTOR_POS = -8
.LOCAL_TMP2_ACTOR_POS = -8

___bank_trigger_fight_interact = 255
.globl ___bank_trigger_fight_interact

_trigger_fight_interact::
        VM_LOCK

        VM_RESERVE              8

        ; Variable Set To
        VM_SET_CONST            VAR_WORDY1, 80

        ; Variable Set To
        VM_SET_CONST            VAR_WORDY2, 97

        ; Variable Set To
        VM_SET_CONST            VAR_WORDY3, 119

        ; Variable Set To
        VM_SET_CONST            VAR_WORDY4, 119

        ; Variable Set To
        VM_SET_CONST            VAR_WORDY5, 119

        ; Variable Set To
        VM_SET_CONST            VAR_WORDY6, 119

        ; Text Menu
        VM_OVERLAY_CLEAR        0, 0, 20, 6, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 12, .OVERLAY_IN_SPEED
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002\002\001Wood\012\002\001Electrweak\012\002\001Water\012\002\001Fire\012\003\014\002\002\001Metal\012\002\001Strong\012\002\001Spacetime\012\002\001Aether"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_TECHNIQUECHOSEN, ^/(.UI_MENU_LAST_0 | .UI_MENU_CANCEL_B)/, 8
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

        ; Variable Set To Random
        VM_RAND                 VAR_TECHNIQUEFOE, 0, 8

        ; Switch Variable
        VM_SWITCH               VAR_TECHNIQUECHOSEN, 7, 0
        .dw 1, 1$
        .dw 2, 2$
        .dw 3, 3$
        .dw 4, 4$
        .dw 5, 5$
        .dw 6, 6$
        .dw 7, 7$

        VM_JUMP                 8$
        ; case 1:
1$:
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Attack 1 used! Swipe!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 8$
        ; case 2:
2$:
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Attack 2 unleashed!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Variable Set To Random
        VM_RAND                 VAR_TECHNIQUEFOE, 1, 5

        VM_JUMP                 8$
        ; case 3:
3$:
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Attack!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Variable Set To Random
        VM_RAND                 VAR_TECHNIQUEFOE, 4, 4

        VM_JUMP                 8$
        ; case 4:
4$:
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Attacked!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 8$
        ; case 5:
5$:
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Move 5."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 8$
        ; case 6:
6$:
        VM_JUMP                 8$
        ; case 7:
7$:
        VM_JUMP                 8$
8$:

        ; Variable Set To
        VM_SET_CONST            VAR_WLOOKINGFOR, 1

        ; Call Script: DatabaseChosenAttack
        VM_CALL_FAR             ___bank_script_16, _script_16

        ; Call Script: DBTypedAttack
        VM_PUSH_REFERENCE       VAR_BATTLERSTR ; Variable V5
        VM_PUSH_REFERENCE       VAR_BATTLERENEMYSTR ; Variable V4
        VM_PUSH_REFERENCE       VAR_TEMP3 ; Variable V3
        VM_PUSH_REFERENCE       VAR_WSTR ; Variable V2
        VM_PUSH_REFERENCE       VAR_WLOOKINGFOR ; Variable V1
        VM_PUSH_REFERENCE       VAR_WTYPE ; Variable V0
        VM_CALL_FAR             ___bank_script_17, _script_17

        ; Variables .SUB
        VM_RPN
            .R_INT16    0
            .R_INT16    255
            .R_REF      VAR_BATTLERENEMYHP1
            .R_REF      VAR_WSTR
            .R_OPERATOR .SUB
            .R_OPERATOR .MIN
            .R_OPERATOR .MAX
            .R_REF_SET  VAR_BATTLERENEMYHP1
            .R_STOP

        ; Variable Set To
        VM_SET_CONST            VAR_WLOOKINGFOR, 0

        ; Call Script: DatabaseChosenAttack
        VM_CALL_FAR             ___bank_script_16, _script_16

        ; Call Script: DBTypedAttack
        VM_PUSH_CONST           VAR_S18T0_LOCAL_0 ; Variable V5
        VM_PUSH_CONST           VAR_S18T0_LOCAL_0 ; Variable V4
        VM_PUSH_REFERENCE       VAR_TEMP3 ; Variable V3
        VM_PUSH_REFERENCE       VAR_WSTR ; Variable V2
        VM_PUSH_REFERENCE       VAR_WLOOKINGFOR ; Variable V1
        VM_PUSH_REFERENCE       VAR_WTYPE ; Variable V0
        VM_CALL_FAR             ___bank_script_17, _script_17

        ; Variables .SUB
        VM_RPN
            .R_INT16    0
            .R_INT16    255
            .R_REF      VAR_BATTLERHP1
            .R_REF      VAR_WSTR
            .R_OPERATOR .SUB
            .R_OPERATOR .MIN
            .R_OPERATOR .MAX
            .R_REF_SET  VAR_BATTLERHP1
            .R_STOP

        ; Actor Move To
        ; -- Fetch b72f84bb-eca5-4d2e-8f89-50fd7ad25041 actorPosition
        VM_SET_CONST            .LOCAL_TMP1_ACTOR_POS, 3
        VM_ACTOR_GET_POS        .LOCAL_TMP1_ACTOR_POS
        ; -- Calculate coordinate values
        VM_RPN
            .R_REF      VAR_BATTLERHP1
            .R_INT16    8
            .R_OPERATOR .SHL
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_REF      ^/(.LOCAL_TMP1_ACTOR_POS + 2)/
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 3
        VM_ACTOR_MOVE_TO_INIT   .LOCAL_ACTOR, .ACTOR_ATTR_H_FIRST
        VM_ACTOR_MOVE_TO_SET_DIR_X .LOCAL_ACTOR
        VM_ACTOR_MOVE_TO_X      .LOCAL_ACTOR, .ACTOR_ATTR_H_FIRST
        VM_ACTOR_MOVE_TO_SET_DIR_Y .LOCAL_ACTOR
        VM_ACTOR_MOVE_TO_Y      .LOCAL_ACTOR, .ACTOR_ATTR_H_FIRST

        ; Actor Move To
        ; -- Fetch bf0a5bcd-fb6a-4054-8bd3-827aab5d446a actorPosition
        VM_SET_CONST            .LOCAL_TMP2_ACTOR_POS, 4
        VM_ACTOR_GET_POS        .LOCAL_TMP2_ACTOR_POS
        ; -- Calculate coordinate values
        VM_RPN
            .R_REF      VAR_BATTLERENEMYHP1
            .R_INT16    8
            .R_OPERATOR .SHL
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_REF      ^/(.LOCAL_TMP2_ACTOR_POS + 2)/
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        ; -- Move Actor
        VM_SET_CONST            .LOCAL_ACTOR, 4
        VM_ACTOR_MOVE_TO_INIT   .LOCAL_ACTOR, .ACTOR_ATTR_H_FIRST
        VM_ACTOR_MOVE_TO_SET_DIR_X .LOCAL_ACTOR
        VM_ACTOR_MOVE_TO_X      .LOCAL_ACTOR, .ACTOR_ATTR_H_FIRST
        VM_ACTOR_MOVE_TO_SET_DIR_Y .LOCAL_ACTOR
        VM_ACTOR_MOVE_TO_Y      .LOCAL_ACTOR, .ACTOR_ATTR_H_FIRST

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF      VAR_BATTLERHP1
            .R_INT16    1
            .R_OPERATOR .LT
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 9$, 1
        VM_JUMP                 10$
9$:
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   3, 1, 16, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "\001\001\002\002@A\nBC\001\003\004\001\377\002\001You lost."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Variable Set To
        VM_SET_CONST            VAR_BATTLERHP1, 5

        ; Reset Scene State Stack
        VM_SCENE_STACK_RESET

        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_player_s_house

10$:

        ; If
        ; -- If Falsy
        VM_IF_CONST             .EQ, VAR_BATTLERENEMYHP1, 0, 11$, 0
        VM_JUMP                 12$
11$:
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   3, 1, 16, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "\001\001\002\002@A\nBC\001\003\004\001\377\002\001You won!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Music Play
        VM_MUSIC_PLAY           ___bank_song_drum_example_Data, _song_drum_example_Data, .MUSIC_NO_LOOP

        ; Pop Scene State
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_OUT             1
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_SCENE_POP

        ; Stop Script
        VM_STOP
12$:

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "It attacked."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Stop Script
        VM_STOP
