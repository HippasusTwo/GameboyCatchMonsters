.module scene_menu_3_init

.include "vm.i"
.include "data/game_globals.i"

.globl b_wait_frames, _wait_frames, _fade_frames_per_step

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -4

___bank_scene_menu_3_init = 255
.globl ___bank_scene_menu_3_init

_scene_menu_3_init::
        VM_LOCK

        VM_RESERVE              4

        ; Actor Deactivate
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR

        ; Wait N Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 1
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Text Menu
        VM_LOAD_TEXT            0
        .asciz "\001\001\003\003\002\002\001Tuxemon\n\002\001Items\n\002\001Exit back"
        VM_OVERLAY_CLEAR        0, 0, 10, 5, .UI_COLOR_WHITE, ^/(.UI_AUTO_SCROLL | .UI_DRAW_FRAME)/
        VM_OVERLAY_MOVE_TO      10, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      10, 13, .OVERLAY_IN_SPEED
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_CHOICE               VAR_S17_LOCAL_0, .UI_MENU_CANCEL_B, 3
            .MENUITEM           1, 1, 1, 3, 0, 2
            .MENUITEM           1, 2, 1, 3, 1, 3
            .MENUITEM           1, 3, 1, 3, 2, 0
        VM_OVERLAY_MOVE_TO      10, 18, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT

        ; Music Play
        VM_MUSIC_PLAY           ___bank_song_rulz_pause_underground_0_Data, _song_rulz_pause_underground_0_Data, .MUSIC_NO_LOOP

        ; Wait For Input
        VM_INPUT_WAIT           48

        ; Pop Scene State
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        VM_SCENE_POP

        ; Stop Script
        VM_STOP
        ; Stop Script
        VM_STOP
