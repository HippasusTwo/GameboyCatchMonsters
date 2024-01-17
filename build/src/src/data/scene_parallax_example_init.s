.module scene_parallax_example_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

.LOCAL_TMP0_WAIT_ARGS = -4
.LOCAL_ACTOR = -4

___bank_scene_parallax_example_init = 255
.globl ___bank_scene_parallax_example_init

_scene_parallax_example_init::
        VM_LOCK

        VM_RESERVE              4

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP0_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP0_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; If Variable True
        VM_IF_CONST             .GT, VAR_S15A15_LOCAL_1, 0, 1$, 0
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "Hey! You woke up!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      0, 14, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT | .UI_WAIT_BTN_A)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

        VM_JUMP                 2$
1$:
        ; Actor Deactivate
        VM_SET_CONST            .LOCAL_ACTOR, 2
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR

2$:

        ; Call Script: Init Menu
        VM_CALL_FAR             ___bank_script_init_menu, _script_init_menu

        ; Music Play
        VM_MUSIC_PLAY           ___bank_song_rulz_outside_0_Data, _song_rulz_outside_0_Data, .MUSIC_NO_LOOP

        ; Call Script: Init Shift Menu
        VM_CALL_FAR             ___bank_script_12, _script_12

        ; Stop Script
        VM_STOP
