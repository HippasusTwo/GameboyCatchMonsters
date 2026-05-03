.module script_17

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255

.SCRIPT_ARG_INDIRECT_0_VARIABLE = -4
.SCRIPT_ARG_INDIRECT_1_VARIABLE = -5
.SCRIPT_ARG_INDIRECT_2_VARIABLE = -6
.SCRIPT_ARG_INDIRECT_3_VARIABLE = -7
.SCRIPT_ARG_INDIRECT_4_VARIABLE = -8
.SCRIPT_ARG_INDIRECT_5_VARIABLE = -9
.LOCAL_TMP0_TEXT_ARG0 = -1
.LOCAL_TMP1_TEXT_ARG0 = -1
.LOCAL_TMP2_TEXT_ARG0 = -1
.LOCAL_TMP3_TEXT_ARG0 = -1
.LOCAL_TMP4_TEXT_ARG0 = -1
.LOCAL_TMP5_TEXT_ARG0 = -1
.LOCAL_TMP6_TEXT_ARG0 = -1
.LOCAL_TMP7_TEXT_ARG0 = -1
.LOCAL_TMP8_TEXT_ARG0 = -1
.LOCAL_TMP9_TEXT_ARG0 = -1
.LOCAL_TMP10_TEXT_ARG0 = -1
.LOCAL_TMP11_TEXT_ARG0 = -1
.LOCAL_TMP12_TEXT_ARG0 = -1
.LOCAL_TMP13_TEXT_ARG0 = -1
.LOCAL_TMP14_TEXT_ARG0 = -1
.LOCAL_TMP15_TEXT_ARG0 = -1
.LOCAL_TMP16_TEXT_ARG0 = -1
.LOCAL_TMP17_TEXT_ARG0 = -1
.LOCAL_TMP18_TEXT_ARG0 = -1
.LOCAL_TMP19_TEXT_ARG0 = -1
.LOCAL_TMP20_TEXT_ARG0 = -1
.LOCAL_TMP21_TEXT_ARG0 = -1
.LOCAL_TMP22_TEXT_ARG0 = -1
.LOCAL_TMP23_TEXT_ARG0 = -1

___bank_script_17 = 255
.globl ___bank_script_17

_script_17::
        VM_RESERVE              1

        ; If
        ; -- If Falsy
        VM_PUSH_VALUE_IND       .SCRIPT_ARG_INDIRECT_1_VARIABLE
        VM_IF_CONST             .EQ, .ARG0, 0, 1$, 1
        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_0_VARIABLE
            .R_REF      VAR_BATTLERTYPE
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 3$, 1
        VM_JUMP                 4$
3$:
        ; Variables .ADD Value
        VM_RPN
            .R_INT16    0
            .R_INT16    255
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    1
            .R_OPERATOR .ADD
            .R_OPERATOR .MIN
            .R_OPERATOR .MAX
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

4$:

        ; Variable [object Object] = VAR_BATTLERENEMYTYPE
        VM_RPN
            .R_REF      VAR_BATTLERENEMYTYPE
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_STOP

        ; Variable [object Object] = $V2$+VAR_BATTLERSTR
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_REF      VAR_BATTLERSTR
            .R_OPERATOR .ADD
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

        ; Variable Copy
        VM_PUSH_VALUE_IND       .SCRIPT_ARG_INDIRECT_5_VARIABLE
        VM_SET_INDIRECT         ^/(.SCRIPT_ARG_INDIRECT_5_VARIABLE - 1)/, .ARG0
        VM_POP                  1

        VM_JUMP                 2$
1$:
        ; Variable [object Object] = VAR_BATTLERTYPE
        VM_RPN
            .R_REF      VAR_BATTLERTYPE
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_STOP

        ; Variable [object Object] = $V2$+VAR_BATTLERENEMYSTR
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_REF      VAR_BATTLERENEMYSTR
            .R_OPERATOR .ADD
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "The enemy's turn."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Variable Copy
        VM_PUSH_VALUE_IND       .SCRIPT_ARG_INDIRECT_4_VARIABLE
        VM_SET_INDIRECT         ^/(.SCRIPT_ARG_INDIRECT_4_VARIABLE - 1)/, .ARG0
        VM_POP                  1

2$:

        ; Switch Variable
        VM_PUSH_VALUE_IND       .SCRIPT_ARG_INDIRECT_0_VARIABLE
        VM_SWITCH               .ARG0, 7, 1
        .dw 1, 5$
        .dw 2, 6$
        .dw 3, 7$
        .dw 4, 8$
        .dw 5, 9$
        .dw 6, 10$
        .dw 7, 11$

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Aether."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 12$
        ; case 1:
5$:
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP0_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP0_TEXT_ARG0
        .asciz "Wood! Power %d!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_INT16    2
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 13$, 1
        VM_JUMP                 14$
13$:
        ; Variable [object Object] = $V2$*2
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    2
            .R_OPERATOR .MUL
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP1_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP1_TEXT_ARG0
        .asciz "Supereffective! %d\012Life uses electricity, &"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_LOAD_TEXT            0
        .asciz "evolves to take advant-\012-age of weakness."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

14$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_INT16    6
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 15$, 1
        VM_JUMP                 16$
15$:
        ; Variable [object Object] = $V2$/2
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    2
            .R_OPERATOR .DIV
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP2_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP2_TEXT_ARG0
        .asciz "Ineffective vs strong! \012Power %d"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

16$:

        VM_JUMP                 12$
        ; case 2:
6$:
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP3_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP3_TEXT_ARG0
        .asciz "Storm! Power %d!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_INT16    3
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 17$, 1
        VM_JUMP                 18$
17$:
        ; Variable [object Object] = $V2$*2
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    2
            .R_OPERATOR .MUL
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP4_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP4_TEXT_ARG0
        .asciz "Supereffective! \012Power %d! Electricity"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_LOAD_TEXT            0
        .asciz "utilizes even small \012impurities in water."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

18$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_INT16    4
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 19$, 1
        VM_JUMP                 20$
19$:
        ; Variable [object Object] = $V2$/2
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    2
            .R_OPERATOR .DIV
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP5_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP5_TEXT_ARG0
        .asciz "Ineffective vs fire! %d\012Why would adding energy\012to a fire help put it out?"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

20$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_INT16    6
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 21$, 1
        VM_JUMP                 22$
21$:
        ; Variable [object Object] = $V2$*2
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    2
            .R_OPERATOR .MUL
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP6_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP6_TEXT_ARG0
        .asciz "Supereffective! %d\012Leptons emit & a quark\012changes flavor."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

22$:

        VM_JUMP                 12$
        ; case 3:
7$:
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP7_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP7_TEXT_ARG0
        .asciz "Water! Power %d!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_INT16    4
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 23$, 1
        VM_JUMP                 24$
23$:
        ; Variable [object Object] = $V2$*2
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    2
            .R_OPERATOR .MUL
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP8_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP8_TEXT_ARG0
        .asciz "Supereffective! %d\012The fire dims."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

24$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_INT16    7
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 25$, 1
        VM_JUMP                 26$
25$:
        ; Variable [object Object] = $V2$/2
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    2
            .R_OPERATOR .DIV
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP9_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP9_TEXT_ARG0
        .asciz "Ineffective. Power %d\012Over time, water turns\012to vapor and dissipates."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

26$:

        VM_JUMP                 12$
        ; case 4:
8$:
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP10_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP10_TEXT_ARG0
        .asciz "Fire! Power %d!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_INT16    5
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 27$, 1
        VM_JUMP                 28$
27$:
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Supereffective vs metal!\012Melted!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; Variable [object Object] = $V2$*2
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    2
            .R_OPERATOR .MUL
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

28$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_INT16    1
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 29$, 1
        VM_JUMP                 30$
29$:
        ; Variable [object Object] = $V2$*2
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    2
            .R_OPERATOR .MUL
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 6, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 12, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP11_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP11_TEXT_ARG0
        .asciz "Supereffective vs wood!\012Power %d. Wood takes\012effort to burn but is\012helpless once you do."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

30$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_INT16    3
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 31$, 1
        VM_JUMP                 32$
31$:
        ; Variable [object Object] = $V2$/2
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    2
            .R_OPERATOR .DIV
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP12_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP12_TEXT_ARG0
        .asciz "Ineffective vs water!\012Do you burn pots when\012cooking? Power %d."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

32$:

        VM_JUMP                 12$
        ; case 5:
9$:
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP13_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP13_TEXT_ARG0
        .asciz "Metal! Power %d!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_INT16    1
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 33$, 1
        VM_JUMP                 34$
33$:
        ; Variable [object Object] = $V2$*2
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    2
            .R_OPERATOR .MUL
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP14_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP14_TEXT_ARG0
        .asciz "Supereffective! %d.\012Cut!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

34$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_INT16    2
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 35$, 1
        VM_JUMP                 36$
35$:
        ; Variable [object Object] = $V2$/2
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    2
            .R_OPERATOR .DIV
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP15_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP15_TEXT_ARG0
        .asciz "Ineffective vs weak! %d"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

36$:

        VM_JUMP                 12$
        ; case 6:
10$:
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP16_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP16_TEXT_ARG0
        .asciz "Strong attack! %d\012Quark blast!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_INT16    2
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 37$, 1
        VM_JUMP                 38$
37$:
        ; Variable [object Object] = $V2$*2
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    2
            .R_OPERATOR .MUL
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP17_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP17_TEXT_ARG0
        .asciz "Strong against\012weak! %d"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

38$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_INT16    5
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 39$, 1
        VM_JUMP                 40$
39$:
        ; Variable [object Object] = $V2$/2
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    2
            .R_OPERATOR .DIV
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 5, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 13, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP18_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP18_TEXT_ARG0
        .asciz "Ineffective! %d\012The metal just turns into\012different metal."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

40$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_INT16    7
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 41$, 1
        VM_JUMP                 42$
41$:
        ; Variable [object Object] = $V2$*2
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    2
            .R_OPERATOR .MUL
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP19_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP19_TEXT_ARG0
        .asciz "Supereffective! %d\012Gravity is a weak force."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

42$:

        VM_JUMP                 12$
        ; case 7:
11$:
        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP20_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP20_TEXT_ARG0
        .asciz "Spacetime power %d."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        ; If
        ; -- If Falsy
        VM_PUSH_VALUE_IND       .SCRIPT_ARG_INDIRECT_3_VARIABLE
        VM_IF_CONST             .EQ, .ARG0, 0, 43$, 1
        VM_JUMP                 44$
43$:
        ; Variable [object Object] = $V2$*2
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    2
            .R_OPERATOR .MUL
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP21_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP21_TEXT_ARG0
        .asciz "Supereffective! %d\012Relativity vs aether!"
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

44$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_INT16    1
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 45$, 1
        VM_JUMP                 46$
45$:
        ; Variable [object Object] = $V2$/2
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    2
            .R_OPERATOR .DIV
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 6, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 12, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP22_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP22_TEXT_ARG0
        .asciz "Ineffective! %d\012The wood sprouts clones\012under the flow of time,\012soaking up temporal dmg."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

46$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_INT16    4
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 47$, 1
        VM_JUMP                 48$
47$:
        ; Variable [object Object] = $V2$*2
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    2
            .R_OPERATOR .MUL
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_GET_INDIRECT         .LOCAL_TMP23_TEXT_ARG0, .SCRIPT_ARG_INDIRECT_2_VARIABLE
        VM_LOAD_TEXT            1
        .dw .LOCAL_TMP23_TEXT_ARG0
        .asciz "Supereffective! %d\012No fire burns forever."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

48$:

        VM_JUMP                 12$
12$:

        ; If
        ; -- Calculate value
        VM_RPN
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_0_VARIABLE
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_3_VARIABLE
            .R_OPERATOR .EQ
            .R_STOP
        ; -- If Truthy
        VM_IF_CONST             .NE, .ARG0, 0, 49$, 1
        VM_JUMP                 50$
49$:
        ; Variables .DIV Value
        VM_RPN
            .R_INT16    0
            .R_INT16    255
            .R_REF_IND  .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_INT16    2
            .R_OPERATOR .DIV
            .R_OPERATOR .MIN
            .R_OPERATOR .MAX
            .R_REF_SET_IND .SCRIPT_ARG_INDIRECT_2_VARIABLE
            .R_STOP

        ; Text Dialogue
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, .UI_DRAW_FRAME
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 18, 5, .UI_COLOR_WHITE
        VM_LOAD_TEXT            0
        .asciz "Ineffective vs own type."
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

50$:

        VM_RESERVE              -1
        VM_RET_FAR_N            6
